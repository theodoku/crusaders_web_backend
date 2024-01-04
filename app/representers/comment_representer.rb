class CommentRepresenter
    def initialize(comment)
      @comment = comment
    end
  
    def as_json
      {
        id: @comment.id,
        content: @comment.content,
        user_id: @comment.user_id,
        created_at: @comment.created_at,
      }
    end
end
  