class Api::CommentsController < ApplicationController

  def create
    @comment = Comment.new(
      id: params[:id],
      song_id: params[:song_id],
      author: params[:author],
      notes: params[:notes],
      song_timestamp: params[:song_timestamp],
      user_id: params[:user_id]
    )
    # @comment.save
    # render "show.json.jb"
    if @comment.save

      #create comment_tags
      eval(params[:tag_ids]).each do |tag_id|
        CommentTag.create(
          comment_id: @comment.id,
          tag_id: tag_id
        )
      end 

      render json: { message: "Comment created successfully" }, status: :created
    else
      render json: { errors: @comment.errors.full_messages }, status: :bad_request
    end 
  end 

  def update
    @comment = Comment.find(params[:id])

    @comment.notes = params[:notes] || @comment.notes,
    @comment.song_timestamp = params[:song_timestamp] || @comment.song_timestamp

    if @comment.save
      @comment.comment_tags.destroy_all
      eval(params[:tag_ids]).each do |tag_id|
        CommentTag.create(
          comment_id: @comment.id,
          tag_id: tag_id
        )
      end
    end 
    render "show.json.jb"
  end 

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: { message: "Comment successfully deleted" }
  end 

end
