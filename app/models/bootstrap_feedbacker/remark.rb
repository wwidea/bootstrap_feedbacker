module BootstrapFeedbacker
  class Remark < ActiveRecord::Base
    belongs_to :user

    def user_name
      return user.send(BootFeed::SETTINGS.user_name_method)
    end
  end
end
