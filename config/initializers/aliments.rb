ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if html_tag.include? "label for"
    %(<div class='error'>#{html_tag}).html_safe
  else
    %(#{html_tag}<span class="error">*&nbsp;#{instance.error_message.join(',')}</span></div>).html_safe
  end
end