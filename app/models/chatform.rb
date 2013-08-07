class Chatform < ActiveRecord::Base
  validates :content, presence: true
end
