module ApplicationHelper
  def alert_class(type)
    {error: "alert-error", notice: "alert-success", alert: "alert-info"}[type]
  end
  
  def menu_active(controller_name)
    return "active" if controller.controller_path == controller_name

  end
  def bar_active(category_name)
   	return "active" if category_name == "languages"
	else
        return "active" if controller.controller_path == category_name
         
       
 
  end 
  
  
  def breadcrumb
    s = ""
    url = request.path.split('?')  #remove extra query string parameters
    levels = url[0].split('/') #break up url into different levels
    if levels.blank?
      s += "<li class='active'>Home</li>\n"
    else
      levels.each_with_index do |level, index|
        unless level.blank?
          if index == levels.size-1 || 
             (level == levels[levels.size-2] && levels[levels.size-1].to_i > 0)
            s += "<li class='active'>#{CGI::unescape(level).gsub(/_/, ' ').capitalize}</li>\n" unless level.to_i > 0
          else
              link = "/"
              i = 1
              while i <= index
                link += "#{levels[i]}/"
                i+=1
              end
              s += "<li><a href=\"#{link}\">#{level.gsub(/_/, ' ').capitalize}<span class='divider'>/</span></a></li>\n"
          end
        end
      end
    end
    s
  end


  def action_active(action_name)
    "active" if controller.action_name == action_name
  end
def row_size(fz)
  if fz.length > 10
  text = fz[0, 10] + "\n" + fz[10, fz.length]
  else
   text = fz
end
  return text
  
  end

def web_presence(link)
      
      url = link 
      unless url.blank?
        url = "http://" << url unless url.match(/^https?:\/\//)
        link_to(url,"#{url}",:target => "_blank")
      end
  end


 #Change date format in edit time
 def change_date_format_for_edit_page(date)
    new_date = date.strftime("%m/%d/%Y")
    puts new_date.inspect
    return new_date
  end
  def green_icon
           "fam-add"
 end

end
