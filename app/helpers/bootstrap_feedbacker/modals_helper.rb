# frozen_string_literal: true

module BootstrapFeedbacker
  module ModalsHelper
    def bootstrap_feedbacker_link(name: "Feedback", **html_options)
      link_to(name, bootstrap_feedbacker.new_remark_path, 'data-turbo-stream': true, **html_options)
    end

    def bootstrap_feedbacker_modal
      tag.div(id: BootstrapFeedbacker::SETTINGS.modal_id)
    end
  end
end
