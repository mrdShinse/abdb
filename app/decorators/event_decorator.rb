# frozen_string_literal: true

module EventDecorator # :nodoc:
  def to_html_card
    link_to event_path(id) do
      content_tag(:div, '', class: 'col s12 m12') do
        concat(content_tag(:div, '', class: 'card grey lighten-3') do
          concat(content_tag(:div, '', class: 'card-content black-text') do
            concat content_tag(:span, book, class: 'card-title')
            concat content_tag(:p, "by #{user.honorific_name}")
          end)
        end)
      end
    end
  end
end
