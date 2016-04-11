class Juice < ActiveRecord::Base
  has_many :health_issues, through: :remedies
  belongs_to :user
  validates :name, :description, :price, presence: true

  attachment :photo

end
