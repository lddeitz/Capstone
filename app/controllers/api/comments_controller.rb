class Api::CommentsController < ApplicationController

before_action :authenticate_user, except: [:create]

  def create
    @comment = Comment.new(
      song_id: params[:song_id],
      notes: params[:notes],
      song_timestamp: params[:song_timestamp],
    )

    if current_user
      @comment.user_id = current_user.id
    else
      @comment.author = params[:author]
    end 

    if @comment.save && (@comment.user_id || @comment.author)

      params[:tag_ids].each do |tag_id|
        CommentTag.create(
          comment_id: @comment.id,
          tag_id: tag_id,
        )
      end 

      render "show.json.jb", status: :created
    else
      render json: { errors: @comment.errors.full_messages }, status: :bad_request
    end 
  end 

  def update
    @comment = Comment.find(params[:id])

    if @comment.user_id == current_user.id
        @comment.notes = params[:notes] || @comment.notes
        @comment.song_timestamp = params[:song_timestamp] || @comment.song_timestamp

      if @comment.save
        @comment.comment_tags.destroy_all
        eval(params[:tag_ids]).each do |tag_id|
          CommentTag.create(
            comment_id: @comment.id,
            tag_id: tag_id
          )
        end
        render "show.json.jb"
      else 
        render json: { errors: @comment.errors.full_messages }, status: :bad_request
      end 
        
    end  
  end 

  def destroy
    @comment = Comment.find(params[:id])

    if @comment.user_id == current_user.id
      if @comment.destroy
        render json: { message: "Comment successfully destroyed!" }
      else 
        render json: { errors: @comment.errors.full_messages }, status: :bad_request
      end
    end
  end 

end
