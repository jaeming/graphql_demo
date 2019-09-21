module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :posts, [Types::PostType], null: false, description: 'List Posts'
    field :post, Types::PostType, null: true, description: 'Find Post' do
      argument :id, ID, required: true
    end
    field :comments, [Types::CommentType], null: false, description: 'List Comments'
    field :comment, Types::CommentType, null: true, description: 'Find Comment' do
      argument :id, ID, required: true
    end
    field :users, [Types::UserType], null: false, description: 'List Users'
    field :user, Types::UserType, null: true, description: 'Find User' do
      argument :id, ID, required: true
    end

    def posts
      Post.all
    end

    def post(id:)
      Post.find(id)
    end

    def comments
      Comment.all
    end

    def comment(id:)
      Comment.find(id)
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end
  end
end
