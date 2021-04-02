class Test < ApplicationRecord

  has_many :results, dependent: :destroy

end
