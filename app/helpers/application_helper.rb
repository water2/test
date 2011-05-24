# -*- encoding: UTF-8 -*-
module ApplicationHelper
  def delete_link(object)
    link_to "Delete", object, :method => :delete,
      :confirm => "Are you sure ? "
  end
end
