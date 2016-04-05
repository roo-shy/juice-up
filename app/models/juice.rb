class Juice < ActiveRecord::Base
  has_many :health_issues, through: :remedies
  belongs_to :user

  # attachment :juice_image

end
