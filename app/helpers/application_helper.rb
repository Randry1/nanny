module ApplicationHelper

  def alert_for_bootstrap(name)
    {
        success: 'alert-success',
        info: 'alert-info',
        warning: 'alert-warning',
        dange: 'alert-dange'
    }[name.to_sym] || name
  end
end
