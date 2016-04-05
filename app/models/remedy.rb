class Remedy < ActiveRecord::Base
  belongs_to :juice
  belongs_to :health_issue
end
