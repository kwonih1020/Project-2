class Visit < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  belongs_to :user
end
