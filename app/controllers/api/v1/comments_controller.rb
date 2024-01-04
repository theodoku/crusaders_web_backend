module Api
    module V1
      class CommentsController < ApplicationController
        before_action :find_user
  
        def create
          comment = @user.comments.build(comment_params)
          if comment.save
            render json: CommentRepresenter.new(comment).as_json, status: :created
          else
            render json: { error: comment.errors.full_messages.join(' ') }, status: :unprocessable_entity
          end
        end
  
        private
  
        def find_user
          @user = User.find(params[:user_id])
        rescue ActiveRecord::RecordNotFound
          render json: { error: 'User not found' }, status: :not_found
        end
  
        def comment_params
          params.require(:comment).permit(:content)
        end
      end
    end
end
  