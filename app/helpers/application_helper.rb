module ApplicationHelper
  
def alert 
if flash[:alert] 
data = "<div class=" + "alert" + ">"
span = "<span class="+ "close" + "data-dismiss=" + "alert" + ">&times;</span>"
 flash[:alert] 
else 
 flash[:alert] = nil 
data1 = "</div>"
end
data.to_s.html_safe
data1.to_s.html_safe
span.to_s.html_safe
end


def success 
if flash[:success] 
data = "<div class=" + "alert" + ">"
span = "<span class="+ "close" + "data-dismiss=" + "alert" + ">&times;</span>"
 flash[:success] 
else 
 flash[:success] = nil 
data1 = "</div>"
end
data.to_s.html_safe
data1.to_s.html_safe
span.to_s.html_safe
end


    
end

