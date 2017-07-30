module UsersHelper

  def contentCheck
    if @user.posts == nil || @user.comments == nil
      "{user.name} has not submitted any posts or comments yet."
    end

  end

end

end
