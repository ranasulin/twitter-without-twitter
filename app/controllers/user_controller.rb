class UserController < ApplicationController
  respond_to :html, :js

  def show
    @followers = User.find(8).followers
  end

  def add_follower
    p params

    #respond_with(@comment) do |format|
    #  format.html { redirect_to [@post.topic, @post] }
    #end
  end
end
