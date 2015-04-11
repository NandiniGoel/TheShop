class ProfilesController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	if @user
  		
  		render action: :show
  	else
  		
  
  	render file: 'public/404', post: 404, formats: [:html]
    end
  end
end