class ListItem < ActiveRecord::Base
  belongs_to :list
  #line 6 added to fix odd behavior where list item 
  #divs would reorder upon completion in list#show
  #line 6 adds new item to top of list and keeps in place correctly for delet or complete
  default_scope { order('created_at DESC') }

  def completed?
  	!completed_at.blank?
  end

end
