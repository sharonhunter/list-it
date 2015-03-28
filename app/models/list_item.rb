class ListItem < ActiveRecord::Base
  belongs_to :list
  #line 4 adds new item to top of list and keeps in position correctly for delete or complete
  default_scope { order('created_at DESC') }

  def completed?
  	!completed_at.blank?
  end

end
