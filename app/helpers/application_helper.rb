module ApplicationHelper
  
  def error_messages_for(object)  
    render(:partial => 'application/error_messages', :locals => {:object => object})
  end
  
   def status_badge(string)
     if string == 'Open' 
       content_tag(:span, "Open" ,:class => 'badge badge-success')
     elsif string == 'Paused'
       content_tag(:span, "Paused" ,:class => 'badge badge-warning')
     else 
       content_tag(:span, "Closed", :class => 'badge badge-important')
     end
   end
  
     def status_button(string)
     if string == 'Open' 
       content_tag(:span, "Open" ,:class => 'btn btn-success btn-large')
     elsif string == 'Paused'
       content_tag(:span, "Paused" ,:class => 'btn btn-warning btn-large')
     else 
       content_tag(:span, "Closed", :class => 'btn btn-danger btn-large')
     end
   end
  
   def status_tag2(string)
     if string == 'Open' 
       tag("tr class='success '", nil, true)
     elsif string == 'Paused'
       tag("tr class='warning'", nil, true)
     else 
       tag('tr class="error"', nil, true)
     end
   end
  
  def status_tag3(datetime, string, integer)
    if datetime > Time.now && string == 'Open'  
      tag("tr class='success', id='datalink', data-link='/tickets/55'", nil, true)
    elsif datetime < Time.now && string == 'Open'
      tag("tr class='error'", nil, true)
    else 
      tag('tr class="muted"', nil, true)
     end
  end
end
