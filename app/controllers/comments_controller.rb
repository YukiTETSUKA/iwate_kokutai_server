class CommentsController < ApplicationController
  protect_from_forgery except: :create

  def show
    render :json => Comment.all
  end

  def create
    Comment.create(:comment => params[:comment], :prefecture_id => params[:prefecture_id].to_i)
  end
end
