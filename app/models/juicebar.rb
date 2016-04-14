class Juicebar < ActiveRecord::Base
  belongs_to :user

  geocoded_by :location
  after_validation :geocode

  validates :name, :location, presence: true
end
