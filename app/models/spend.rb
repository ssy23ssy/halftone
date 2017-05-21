class Spend < ApplicationRecord
  belongs_to :travel

  def self.ex_period(i)
    where(day: i+1).blank? # 있는 기간 검사
  end
end
