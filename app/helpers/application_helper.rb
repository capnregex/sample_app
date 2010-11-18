module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "App"
    if @title.nil?
      cn = controller.controller_name.humanize 
      an = controller.action_name.singularize.humanize
      "#{ base_title } | #{ cn } #{ an }"
    else
      "#{base_title} | #{@title}"
    end
  end

end
