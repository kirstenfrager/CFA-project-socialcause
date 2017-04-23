class PhotographPolicy
  attr_reader :user, :post

 def initialize(user, post)
   @user = user
   @post = post
  end

  def update?
    if @user.class == Influencer
      @post.influencer == @user
    else
      @user.admin?
    end
  end
end
