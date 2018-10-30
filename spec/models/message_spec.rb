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
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:user)}
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:content) }
  end
end
