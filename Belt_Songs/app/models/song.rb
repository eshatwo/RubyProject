class Song < ActiveRecord::Base
    belongs_to :user
    validates :artist, :title, presence: true, length: {minimum: 2}
end
