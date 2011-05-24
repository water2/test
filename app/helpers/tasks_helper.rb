# -*- encoding: UTF-8 -*-

module TasksHelper
  def links_for(task)
    links = []
    links << link_to("edit", [ :edit, task ])
    if task.done?
      links << link_to("back", [ :restart, task ], :method => :put)
    else
      links << link_to("done", [ :finish, task ], :method => :put)
    end
    links << delete_link(task)
    raw(links.join(" "))
  end
end
