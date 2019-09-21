class Types::CommentType < Types::BaseObject

  description "A Comment"

  field :id, ID, null: false
  field :body, String, null: false
  field :user_id, Int, null: false
  field :post_id, Int, null: false
end