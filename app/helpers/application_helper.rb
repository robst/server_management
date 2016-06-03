module ApplicationHelper
  def display_empty_message collection
    return unless collection.empty?
    content_tag :div, t('empty_collection'), class: 'alert alert-info'
  end

  def bootstrap_icon type, color_class = nil
    content_tag :span, nil, class: "glyphicon glyphicon-#{type} #{color_class}"
  end
end
