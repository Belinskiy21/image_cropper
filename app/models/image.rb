class Image
  include Mongoid::Document
  field :width, type: String
  field :height, type: String
end
