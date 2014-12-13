class CommentsController < ApplicationController
  protect_from_forgery except: :create

  def show
    render :json => Comment.all if params[:prefecture_id].to_i == 47 # 全都道府県へのコメントを取得してくる
    render :json => Comment.where(prefecture_id: params[:prefecture_id]) unless params[:prefecture_id].to_i == 47
  end

  def create
    Comment.create(:comment => params[:comment], :prefecture_id => params[:prefecture_id].to_i)
  end
end
