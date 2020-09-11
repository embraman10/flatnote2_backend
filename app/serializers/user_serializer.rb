class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :contents
  has_many :notes
end
