#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class Publisher < ApplicationRecord
  has_many :books
  validates :name, presence: true
end
