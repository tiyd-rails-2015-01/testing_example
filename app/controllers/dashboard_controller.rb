class DashboardController < ApplicationController
  def show_time
    @subscribers = Subscriber.all
  end

  def render_time
    @subscribers = Subscriber.all
    render "show_time"
  end

  def go_to_time
    redirect_to dashboard_show_time_path
  end
end
