class MessageDecorator < Draper::Decorator
  delegate_all

  def formatted
    h.content_tag :article do
      h.content_tag :span do
        "#{object.user_id}: #{ object.content }"
      end
    end
  end
end
