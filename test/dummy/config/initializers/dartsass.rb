# frozen_string_literal: true

# Silence import deprecation warnings
# https://sass-lang.com/documentation/breaking-changes/import/

Rails.application.config.dartsass.build_options << "--quiet-deps" << "--silence-deprecation import"
