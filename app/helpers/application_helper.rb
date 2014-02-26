module ApplicationHelper
  
   def status_tag(string)
     
     if string == 'Open' 
        content_tag(:span, "O" ,:class => 'badge badge-success')
    
     elsif string == 'Paused'
       content_tag(:span, "P" ,:class => 'badge badge-warning')
       
      else 
        content_tag(:span, "C", :class => 'badge badge-important')
      end
  end
  
end
