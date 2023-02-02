# frozen_string_literal: true

module BootstrapFeedbacker
  class RemarksController < ApplicationController
    def new
      @remark = BootstrapFeedbacker::Remark.new
      render_update(SETTINGS.modal_id, partial: "new")
    end

    def create
      @remark = Remark.new(remark_params)
      if @remark.save
        FeedbackMailer.feedback(@remark).deliver_now
        render_update(SETTINGS.modal_content_id, partial: "thank_you")
      else
        render_update(SETTINGS.modal_content_id, partial: "error", status: :unprocessable_entity)
      end
    end

    private

    def remark_params
      params.require(:remark).permit(:content).merge(
        user_id:    current_user.id,
        source_url: request.env["HTTP_REFERER"] || "no referrer"
      )
    end

    def render_update(dom_id, partial:, status: :ok)
      render(turbo_stream: turbo_stream.update(dom_id, partial: partial), status: status)
    end
  end
end
