class Types::UserType < Types::BaseObject

  description "A blog post"

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :street, String, null: false
  field :number, String, null: false
  field :postcode, Int, null: false
  field :city, String, null: false
  field :country, String, null: false
  field :full_address, String, null: false
  field :user_id, Int, null: false
  field :posts, [Types::PostType], null: true

  def full_address
    "#{object.number} #{object.street}, #{object.city}, #{object.postcode}, #{object.country}"
  end
end