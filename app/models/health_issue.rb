class HealthIssue < ActiveRecord::Base
  
 has_many :recipes, through: :remedies
 validates :name, presence: true

end
