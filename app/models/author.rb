#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class Author < ApplicationRecord
  #relation between author table and books table
  has_many :books
  #No blank spaces for first and last name of authors
  validates :first_name, presence: true
  validates :last_name, presence: true
end
