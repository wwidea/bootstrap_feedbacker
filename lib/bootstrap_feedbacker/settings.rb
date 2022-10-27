# frozen_string_literal: true

module BootstrapFeedbacker
  class Settings
    attr_accessor :email_to, :email_prefix, :modal_id, :user_name_method, :user_class

    def initialize
      self.email_to           = ''
      self.email_prefix       = '[FEEDBACKER]'
      self.modal_id           = 'bootstrap_feedbacker_remark_modal'
      self.user_class         = "User"
      self.user_name_method   = :name
    end

    def update
      yield self
    end
  end

  SETTINGS = Settings.new
end
