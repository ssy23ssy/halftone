class Travel < ApplicationRecord
  belongs_to :user
  has_many :spends, dependent: :destroy
end
