class Rating < ActiveRecord::Base
  belongs_to :visit
  belongs_to :user
end
