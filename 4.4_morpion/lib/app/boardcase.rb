# frozen_string_literal: true

# Création des cases vides
class BoardCase
  attr_accessor :case_id, :case_value

  def initialize(id)
    @case_id = id
    @case_value = ' '
  end
end
