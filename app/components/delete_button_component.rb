# frozen_string_literal: true

class DeleteButtonComponent < ViewComponent::Base
  def initialize(resource:, confirmation_message: "Are you sure?")
    @resource = resource
    @confirmation_message = confirmation_message
  end
end