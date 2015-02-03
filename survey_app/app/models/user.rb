#require 'bcrypt'
class User < ActiveRecord::Base
  belongs_to :role
  has_many :responses
  has_many :options, through: :responses
  has_secure_password


  validates :name, uniqueness: true
  validates :gender, inclusion: { in: %w(M F), message: "%{value} is not a valid gender"}
  validates :email, uniqueness: true, format: { with: /(\w.*)+@[a-z]+.[a-z]+/,message: "not a valid email" }
  validates :age, inclusion: { in: (15..80).to_a,message: "%{value} is not a valid age"}

=begin
  before_save :normalize_name,unless: :name_present


  def normalize_name
    puts "inside"
    self.name = name.downcase.titleize
  end

  #before_save :modify, unless: :name_present
  #def modify
  # self.email = email.captalize
  #end

  def name_present
    self.name.nil?
  end
=end

end
