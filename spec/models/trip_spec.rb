require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :zoom }
    it { is_expected.to validate_presence_of :latitude }
    it { is_expected.to validate_presence_of :longitude }
    it { is_expected.to validate_presence_of :user_id }
    it { is_expected.to validate_numericality_of :zoom }
    # Commenting out numericality tests due to issue with Ruby 2.4

    # it { is_expected.to validate_numericality_of :latitude }
    # it { is_expected.to validate_numericality_of :longitude }
    it { is_expected.to validate_numericality_of :user_id }
  end

  describe 'associations' do
    it { is_expected.to have_many :markers }
    it { is_expected.to have_many :pings }
    it { is_expected.to have_many :trip_ratings }
  end
end
