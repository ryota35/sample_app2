class Result < ApplicationRecord
  before_create :judg_answer
  belongs_to :score
  belongs_to :test

  def judg_answer
    test = Test.find(self.test_id)
    if selection_result == test.answer
      self.judgment = 'true'
    else
      self.judgment = 'false'
    end
  end

end
