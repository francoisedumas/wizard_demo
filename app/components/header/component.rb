# frozen_string_literal: true

module Header
  class Component < ViewComponent::Base
    def initialize(title:, backpath:, data_option: {})
      @title = title
      @backpath = backpath || root_path
      @data_option = data_option
    end

    attr_reader :backpath
  end
end
