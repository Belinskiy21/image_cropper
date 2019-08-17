class Image
  include Mongoid::Document
  field :width, type: String
  field :height, type: String

  belongs_to :user
end
