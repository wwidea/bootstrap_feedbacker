module BootstrapFeedbacker
  class Remark < ActiveRecord::Base
    belongs_to :user, class_name: BootstrapFeedbacker::SETTINGS.user_class

    def user_name
      return user.send(BootstrapFeedbacker::SETTINGS.user_name_method)
    end
  end
end
