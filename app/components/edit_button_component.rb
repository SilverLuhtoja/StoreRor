# frozen_string_literal: true

class EditButtonComponent < ViewComponent::Base
  def initialize(resource:)
    @resource = resource
  end
end
