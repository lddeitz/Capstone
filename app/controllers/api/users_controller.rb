class Api::UsersController < ApplicationController

  before_action :authenticate_user, except: [:create, :show]

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      artist_name: params[:artist_name],
      bio: params[:bio],
      profile_picture: params[:profile_picture],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render "show.json.jb", status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end 

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end 

  def update
    @user = User.find(params[:id])
    
    if @user == current_user
      @user = current_user
      @user.first_name = params[:first_name] || @user.first_name
      @user.last_name = params[:last_name] || @user.last_name
      @user.email = params[:email] || @user.email
      @user.artist_name = params[:artist_name] || @user.artist_name
      @user.bio = params[:bio] || @user.bio
      @user.profile_picture = params[:profile_picture] || @user.profile_picture

      if params[:password]
        @user.password = params[:password] || @user.password
        @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
      end 

      if @user.save
        render "show.json.jb"
      else 
        render json: { errors: @user.errors.full_messages }, status: :bad_request
      end 

    else 
      render json: {message: "Unauthorized to edit this user."}
    end

  end 

  def destroy
    @user = User.find(params[:id])

    if @user == current_user
      if @user.destroy
        render json: {Message: "User successfully destroyed!"}
      else 
        render json: { errors: @user.errors.full_messages }, status: :bad_request
      end
    end
  end 
end
