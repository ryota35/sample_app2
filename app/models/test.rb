class Test < ApplicationRecord

  has_many :results, dependent: :destroy

  enum level: { 初級: 0, 中級: 1, 上級: 2 }

  def get_answer
    eval("choice#{answer}")
  end

  class << self

    def test_set
      low = Test.where(level: '初級')
      low_question = low.sample(10)
      middle = Test.where(level: '中級')
      middle_question = middle.sample(10)
      high = Test.where(level: '上級')
      high_question = high.sample(10)
      low_question + middle_question + high_question
    end
    
  end
# def get_answer
#     if answer == 1
#       choice1
#     elsif answer == 2
#       choice2
#     elsif answer == 3
#       choice3
#     else
#       choice4
#     end
# end

end
