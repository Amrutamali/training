class Response < ActiveRecord::Base

  belongs_to :user
  belongs_to :option
#validaties_uniqueness_of :user, scope: :option
end
