module StaticPagesHelper
  # def link_to_active(name, options = {}, html_options = {}, &block)
  #   # debugger
  #   if current_page?(options.to_s)
  #     html_options[:class] += "active"
  #   end

  #   link_to(name, options, html_options, &block)
  # end

  def active_link_to(text = nil, path = nil, **options, &block)
    # debugger
    link = block_given? ? text : path

    options[:class] = class_names(options[:class], 'active') if current_page? link

    if block_given?
      link_to text, options, &block
    else
      link_to text, path, options
    end
  end
end
