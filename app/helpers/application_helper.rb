module ApplicationHelper
  def display_empty_message collection
    return unless collection.empty?
    content_tag :div, t('empty_collection'), class: 'alert alert-info'
  end

  def glyph_icon type, color_class = nil
    content_tag :span, nil, class: "glyphicon glyphicon-#{type} #{color_class}"
  end

  def modal_header title
    render partial: 'shared/modal/header', locals: { title: title }
  end

  def modal_form_footer 
    render partial: 'shared/modal/form_footer'
  end

  def modal_form object, options, &block
    options.merge(title:'')
    render layout: 'shared/modal/modal_form', locals: {options: options, object: object } do |form|
      yield form
    end
  end

  def panelize options, &block
    options.merge(title:'')
    render layout: 'shared/panel', locals: {options: options } do
      yield
    end
  end
end
