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

class Message < ApplicationRecord
  validates :content, presence: true
  validates :user_id, presence: true
end
