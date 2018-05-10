class Rating < ApplicationRecord
  belongs_to :user
  has_one :recruiter
end
