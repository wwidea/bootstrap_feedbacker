# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_user
    @current_user = User.first || User.create(name: "Test User", email: "test@example.com")
  end
end
