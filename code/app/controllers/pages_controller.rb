# Pages controller inherits from the application controller
class PagesController < ApplicationController

# Searching is handled by this controller
def search  
# If the user searches for a blank entry, they will be redirected to the welcome page
  if params[:search].blank?  
    redirect_to('/welcome/index', alert: "Please enter a search term") and return  
# If the user searches for an entry, their search will be converted to lowercase
  else  
    @parameter = params[:search].downcase  
    @results = Article.all.where("lower(Title) LIKE :search", search: "%#{@parameter}%")  
  end     
end

end

