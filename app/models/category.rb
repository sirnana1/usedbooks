#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#

class Category < ApplicationRecord
  #creating relational relations with books in the database
  has_many :books
  #require user input is these fields
  validates :name, presence: true, length: { minimum: 3}
end
