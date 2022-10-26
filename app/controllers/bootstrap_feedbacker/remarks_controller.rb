# frozen_string_literal: true

module BootstrapFeedbacker
  class RemarksController < ApplicationController
    def create
      @remark = Remark.new(remark_params.merge(user_id: current_user.id))
      @remark.source_url = request.env['HTTP_REFERER'] || "no referrer"
      if @remark.save
        FeedbackMailer.feedback(@remark).deliver_now
        respond_to do |format|
          format.js
        end
      end
    end

    private

    def remark_params
      params.require(:remark).permit(:content)
    end
  end
end
