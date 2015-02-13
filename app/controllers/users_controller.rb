class UsersController < ApplicationController

  def index
    @users = User.where.not(id: current_user.id)
    # @users = Friendship.user.where.not(user_id: current_user.id)
    # @users = User.where.not(id: current_user.friendships.friend_id)
  end

  def new
    @user = User.new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    @user = User.find_by_uid(auth_hash.uid)
    if @user
      session[:user_id] = @user.id
      @current_user = current_user
      redirect_to root_path
    else
      @user = User.new(uid: auth_hash.uid, name: auth_hash.info.name)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
      else
        redirect_to @user
      end
    end
    # @user = User.new(users_params)
    # if @user.save
    #   redirect_to users_show_path(@user)
    # else
    #   render 'new'
    # end
  end

  def show
    @user = current_user || User.find(params[:id])
  end

  def edit
    @user = current_user || User.find(params[:id])
    @users = User.where(admin: nil, confirmed: true)
  end

  def update
    @user = current_user
    email1 = @user.email
    @user.update(users_params)
    if params[:user][:admin] == "1"
      @user.admin = nil
      @user.save
    end
    email2 = @user.email
    unless email1 == email2
      @user.confirmed = false
      @user.save
      Resque.enqueue(EmailConfirmJob, @user.id)
      puts "EMAILED"
      flash[:notice] = "Expect an email confirming your subscription shortly!"
    end
    flash[:notice] = "Your account has been updated!"
    redirect_to user_show_path

  end

  def destroy
    @user = current_user
    if @user.destroy
      session[:user_id] = nil
      redirect_to root_path
    else
      render "show"
    end
  end

  def confirm
    @user = @current_user
    @user.confirm
    @user.save
    flash[:notice] = "Your email has been confirmed."
    redirect_to users_path
  end

  def become_admin
    @user = User.find(params[:id])
    if @user.confirmed
      @user.adminify
      @user.save
      redirect_to users_path
    else
      render "admin_request"
    end
  end

  def deny_request
    @user = User.find(params[:id])
    @user.turn_down
    @user.save
    flash[:notice] = "We regret to inform you that your request for admin access has been denied!"
    redirect_to users_path
  end

  def admin_request
    @user = @current_user
  end

  private

  def users_params
    params.require(:user).permit(:email, :name, :created_at, :admin, :image_url, :image, :confirmed, :notify)
  end

end
