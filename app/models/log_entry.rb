class LogEntry < ActiveRecord::Base
  belongs_to :wine
  validates :name, :rating, :location, :comments, :tasted_on, presence: true

  RATINGS = 1..4
  validates :comments, length: { minimum: 15 }, unless: 'comments.blank?'
  validates :rating, inclusion: { in: RATINGS, message: "must be from #{RATINGS.first} to #{RATINGS.last}" }
end
