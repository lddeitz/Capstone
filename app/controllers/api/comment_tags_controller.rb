class Api::CommentTagsController < ApplicationController

  def create
    @commentTags = CommentTags.new(
      comment_id: params[:comment_id],
      tag_id: params[:tag_id]
    )
    if @commentTags.save
      render "show.json.jb"
    else 
      render json: { errors: @commentTags.errors.full_messages }, status: :bad_request
    end 
  end 

  def destroy
    @commentTags = CommentTags.destroy
    if @commentTags.save
      render json: { message: "Tag deleted successfully" }
    else 
      render json: { errors: @commentTags.errors.full_messages }, status: :bad_request
    end
  end 

end
