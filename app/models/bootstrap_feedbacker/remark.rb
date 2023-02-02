# frozen_string_literal: true

module BootstrapFeedbacker
  class Remark < BootstrapFeedbacker::ApplicationRecord
    belongs_to :user, class_name: BootstrapFeedbacker::SETTINGS.user_class.to_s

    def user_name
      user.send(BootstrapFeedbacker::SETTINGS.user_name_method)
    end
  end
end
