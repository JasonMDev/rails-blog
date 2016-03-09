class Article < ActiveRecord::Base
	belongs_to :user
  has_many :comments, dependent: :destroy
	validates :title, presence: true,
	                  length: { minimum: 5}
  validates :description, presence: true              

  # Raty average rating
  def average_rating
    comments.average(:rating).to_f
  end

  # Raty total rating.
  def total_rating
    comments.count(:rating).to_f
  end

end
