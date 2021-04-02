class Score < ApplicationRecord

  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :results
  accepts_nested_attributes_for

end
