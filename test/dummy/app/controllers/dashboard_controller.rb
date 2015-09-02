class DashboardController < ApplicationController
  def index
    @current_user = current_user
  end

  private

  def current_user
    super
  end
end
