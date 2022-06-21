class CommentsController < ApplicationController

  # def create
  #   # aqui vai criar o comentário que vem do formulário
  #     Comment.create!(commenter: params[:comment][:commenter],
  #                     body:c params[:comment][:body], article_id: params[:article_id])

  #     redirect_to article_path(params[:article_id])
  # end

  # def create
  #   # aqui vai criar o comentário que vem do formulário
  #     Comment.create!(commenter: comment_params[:commenter],
  #                     body:comment_params[:body], article_id: params[:article_id])

  #     redirect_to article_path(params[:article_id])
  # end

  def create
    article = Article.find(params[:article_id])
    article.comments.create(comment_params) #{commenter: 'asdfasd', body: 'basdfasdf'}
    redirect_to article_path(article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body) # strong params
    end
end
