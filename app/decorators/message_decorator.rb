class MessageDecorator < Draper::Decorator
  delegate_all

  def formatted
    h.content_tag :div, class: 'media' do
      h.content_tag(:div,
        h.content_tag(:h5, object.user.username) +
        h.content_tag(:p, object.content), class: 'media-body')
    end
  end
end
