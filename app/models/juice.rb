class Juice < ActiveRecord::Base
  has_many :remedies
  has_many :order_items
  has_and_belongs_to_many :juicebars
  has_many :health_issues, through: :remedies
  belongs_to :user
  validates :name, :description, :price, presence: true

  attachment :photo

  def self.search(search)
    where("health_issue_id LIKE ?", "health_issue.id")
  end

end
