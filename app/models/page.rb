class Page < ApplicationRecord
  has_many :rows, dependent: :destroy
end
