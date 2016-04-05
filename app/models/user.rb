class User < ActiveRecord::Base
  has_many :recipes
end
