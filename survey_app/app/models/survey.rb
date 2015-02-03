class Survey < ActiveRecord::Base
TYPES = ["Education", "Sports"]
  has_many :questions

#  scope:created_at,->{where(created_at: (Time.now.midnight-1.day )..Time.now.midnight + 2.day)
#  }
accepts_nested_attributes_for :questions

end

#where(created_at: (Time.now.midnight)..Time.now.midnight + 1.day)

