#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
module ApplicationHelper
  # Return the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "USED BOOKS"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
