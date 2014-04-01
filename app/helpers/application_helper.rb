module ApplicationHelper
  
  def error_messages_for(object)  
    render(:partial => 'application/error_messages', :locals => {:object => object})
  end
  
   def status_tag(string)
     
     if string == 'Open' 
       content_tag(:span, "Open" ,:class => 'badge badge-success')
    
     elsif string == 'Paused'
       content_tag(:span, "Paused" ,:class => 'badge badge-warning')
       
     else 
       content_tag(:span, "Closed", :class => 'badge badge-important')
     end
  end
  
     def status_tag2(string)
     
     if string == 'Open' 
       tag("tr class='success'", nil, true)
    
     elsif string == 'Paused'
       tag("tr class='warning'", nil, true)
       
     else 
       tag('tr class="error"', nil, true)
     end
  end
  
  def status_tag3(datetime, string)
     
    if datetime > Time.now && string == 'Open'  
       tag("tr class='success'", nil, true)
    
    elsif datetime < Time.now && string == 'Open'
      tag("tr class='error'", nil, true)
    
    else 
      tag('tr class="muted"', nil, true)
   
     end
  end
  
end
