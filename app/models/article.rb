class Article < ApplicationRecord
  belongs_to :user
  belongs_to :admin

  enum level: { 初級: 0, 中級: 1, 上級: 2 }
end
