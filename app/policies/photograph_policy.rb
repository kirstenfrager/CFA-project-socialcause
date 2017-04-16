class PhotographPolicy
   attr_reader :user, :influencer, :post

   def initialize(user, post)
     @user = user
     @influencer = influencer
     @post = post
   end

   def update?
     user.admin?
   end
 end
