# == Schema Information
#
# Table name: messages
#
#  id         :bigint(8)        not null, primary key
#  content    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_messages_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_presence_of(:user_id) }
  end
end
