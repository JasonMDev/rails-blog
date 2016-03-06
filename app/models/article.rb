class Article < ActiveRecord::Base
	belongs_to :user
  has_many :comments, dependent: :destroy
	validates :title, presence: true,
	                  length: { minimum: 5}

  # Add the def Average rating

  # Add the total rating.

end
