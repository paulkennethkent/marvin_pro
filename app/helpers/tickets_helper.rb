module TicketsHelper
   
  def status_tag(string)
     
      if string == 'o' 
        content_tag(:span, "Open" ,:class => 'status true')
        
      else 
        content_tag(:span, "Closed", :class => 'status false')
      end
  end

end
