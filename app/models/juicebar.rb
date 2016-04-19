class Juicebar < ActiveRecord::Base
  has_and_belongs_to_many :juices
  geocoded_by :location
  after_validation :geocode

  validates :name, :location, presence: true

  attachment :photo
end
