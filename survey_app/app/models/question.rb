class Question < ActiveRecord::Base

  has_many :options
  belongs_to :survey

  accepts_nested_attributes_for :options, :allow_destroy => true
  
  after_create :add_question_count
  after_destroy :add_question_count

  def add_question_count

     count = self.survey.questions.count
     self.survey.update_attribute(:question_count, count)
  end

end
