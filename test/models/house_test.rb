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
require "test_helper"

class HouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
