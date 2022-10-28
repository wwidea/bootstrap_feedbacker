class DashboardController < ApplicationController
  def index
    @current_user = User.first || User.create(name: 'Test User', email: 'test@example.com')
  end
end
