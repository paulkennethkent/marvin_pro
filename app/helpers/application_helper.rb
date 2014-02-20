module ApplicationHelper
  
   def status_tag(string)
     
      if string == 'o' 
        content_tag(:span, "O" ,:class => 'badge badge-success')
        
      else 
        content_tag(:span, "C", :class => 'badge badge-important')
      end
  end
  
end
