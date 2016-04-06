class Juice < ActiveRecord::Base
  has_many :health_issues, through: :remedies
  belongs_to :user
  validates :name, presence: true

  # attachment :juice_image

end
