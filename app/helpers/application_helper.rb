module ApplicationHelper

  # Bootstrap classes for alerts
  def bootstrap_class_for flash_type
    flash_type ||= 'alert-danger'
    case flash_type
      when 'success'
        'alert-success'
      when 'error'
        'alert-danger'
      when 'alert'
        'alert-warning'
      when 'notice'
        'alert-info'
      else
        flash_type.to_s
    end
  end

  # Define when a link is marked as active
  def active_class(link_path)
    active = current_page?(link_path) ? "active" : ""
  end

end
