class Api::CommentTagsController < ApplicationController

  def create
    @commentTags = CommentTags.new(
      id: params[:id],
      comment_id: params[:comment_id],
      tag_id: params[:tag_id]
    )
    @commentTags.save
    render "show.json.jb"
  end 

  def destroy
    @commentTags = CommentTags.destroy
    @commentTags.save
    render json: { message: "Tag deleted successfully" }
  end 

end
