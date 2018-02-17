module ApplicationHelper

  def alert_for_bootsrap(name)
    {
        success: 'alert-success',
        info: 'alert-info',
        warning: 'alert-warning',
        danger: 'alert-danger',
        alert: 'alert-info',
        notice: 'alert-info'
    }[name.to_sym] || name
  end
end
