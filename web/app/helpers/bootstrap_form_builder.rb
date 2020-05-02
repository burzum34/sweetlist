class BootstrapFormBuilder < ActionView::Helpers::FormBuilder
  def field_for(attribute, options = {})
    options = field_for_options(attribute, options)
    label_html = @template.content_tag(:label, options[:label], for: options[:id])
    input_options = options.slice(:id, :type, :name).merge(class: 'form-control')
    input_html = @template.tag(:input, input_options)
    @template.content_tag(:div, label_html + input_html, class: 'form-group')
  end

  private

  def field_for_options(attribute, options)
    defaults = {
      type: 'text',
      id: default_field_id(attribute),
      name: default_field_name(attribute),
      label: default_field_label(attribute)
    }

    defaults.merge!(options)
  end

  def default_field_id(attribute)
    "#{@object_name}_#{attribute}"
  end

  def default_field_name(attribute)
    "#{@object_name}[#{attribute}]"
  end

  def default_field_label(attribute)
    attribute.to_s.humanize
  end
end
