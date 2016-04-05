class HealthIssue < ActiveRecord::Base

  has_many :recioes, through: :remedies
end
