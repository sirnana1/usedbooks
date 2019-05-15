#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class Book < ApplicationRecord
  belongs_to :category
  belongs_to :author
  belongs_to :publisher
  # All these fields needs to be filled out by user or error message
  validates :title, presence: true
  validates :isbn, presence: true, length:{maximum: 13}
  validates :price, presence: true, length:{minimum: 1}
  validates :format, presence: true
  validates :year, presence: true, length: {maximum: 4}
  validates :description, presence: true
  validates :author, presence: true
  validates :category, presence: true
  validates :publisher, presence: true
end
