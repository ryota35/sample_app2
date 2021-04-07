class Article < ApplicationRecord
  belongs_to :user
  belongs_to :admin, optional: true

  enum level: { 初級: 0, 中級: 1, 上級: 2 }

  def reading_time
    reading_time = body.length / 10
    if reading_time < 1
      p "この記事の読了目安時間は1分以内です。"
    else
      p ("この記事の読了目安時間は#{reading_time}分です")
    end
  end

end
