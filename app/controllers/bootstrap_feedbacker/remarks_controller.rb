require_dependency "bootstrap_feedbacker/application_controller"

module BootstrapFeedbacker
  class RemarksController < ApplicationController

    # POST /remarks
    def create
      binding.pry
      @remark = Remark.new(remark_params.merge(user_id: current_user.id))

      if @remark.save
        FeedbackMailer.feedback(@remark).deliver_now
        respond_to do |format|
          format.js
        end
      end
    end

    private

    # Only allow a trusted parameter "white list" through.
    def remark_params
      params.require(:remark).permit(:source_url, :content)
    end
  end
end
