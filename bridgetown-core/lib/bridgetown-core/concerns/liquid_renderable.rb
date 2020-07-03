# frozen_string_literal: true

module Bridgetown
  module LiquidRenderable
    # Determine whether the file should be rendered with Liquid.
    #
    # Returns false if the document is a yaml file or if the document doesn't
    # contain any Liquid Tags or Variables, true otherwise.
    def render_with_liquid?
      return false if data["render_with_liquid"] == false

      !(yaml_file? || !Utils.has_liquid_construct?(content))
    end

    # Override in individual classes
    def yaml_file?
      false
    end
  end
end
