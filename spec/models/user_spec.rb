# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  context "associations" do
    it { is_expected.to have_many(:messages) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:username) }
  end
end
