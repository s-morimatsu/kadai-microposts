module ApplicationHelper
  include Pagy::Frontend
  include SessionsHelper
  
  
  def user_favorite_count_ah(user,micropost)
    c = Favorite.find_by(user_id: user.id, micropost_id: micropost.id)
    if c == nil 
      return 0
    else
      return c
    end
  end
  
end
