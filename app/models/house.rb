# frozen_string_literal: true

# == Schema Information
#
# Table name: houses
#
#  id                       :integer          not null, primary key
#  address                  :string
#  current_family_last_name :string
#  exterior_color           :string
#  interior_color           :string
#  rooms                    :integer
#  square_feet              :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
class House < ApplicationRecord
  enum form_steps: {
    address_info: [:address, :current_family_last_name],
    house_info: [:interior_color, :exterior_color],
    house_stats: [:rooms, :square_feet]
  }
  attr_accessor :form_step

  with_options if: -> { required_for_step?(:address_info) } do
    validates :address, presence: true, length: { minimum: 10, maximum: 50}
    validates :current_family_last_name, presence: true, length: { minimum: 2, maximum: 30}
  end

  with_options if: -> { required_for_step?(:house_info) } do
    validates :interior_color, presence: true
    validates :exterior_color, presence: true
  end

  with_options if: -> { required_for_step?(:house_stats) } do
    validates :rooms, presence: true, numericality: { greater_than: 1 }
    validates :square_feet, presence: true
  end

  # Checks current step to enable or disable validations appropriately
  def required_for_step?(step)
    # All fields are required if no form step is present
    return true if form_step.nil?

    # All fields from previous steps are required
    ordered_keys = self.class.form_steps.keys.map(&:to_sym)
    !!(ordered_keys.index(step) <= ordered_keys.index(form_step))
  end
end
