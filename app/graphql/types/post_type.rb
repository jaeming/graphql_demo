class Types::PostType < Types::BaseObject

  description "A blog post"

  field :id, ID, null: false
  field :body, String, null: false
  field :published, Boolean, null: false
  field :user_id, Int, null: false
  field :comments, [Types::CommentType], null: true

  def comments
    object.comments
  end
end