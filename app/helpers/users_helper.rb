module UsersHelper
  def no_post_no_comment?(posts, comments)
    current_user.posts.count == 0 && current_user.comments.count == 0
  end
end
