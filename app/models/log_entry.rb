class LogEntry < ActiveRecord::Base
  belongs_to :wine
  validates :name, :rating, :location, :comments, :tasted_on, presence: true

end
