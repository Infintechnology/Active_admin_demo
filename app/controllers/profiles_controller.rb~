class ProfilesController < InheritedResources::Base
	 def new
    @profile = current_user.build_profile

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end


  def create
		@profile = current_user.build_profile( profile_params )
		# render json: profile_params
		#return
	 
	 respond_to do |format|
		    if @profile.save
		      format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
		      format.json { render json: @profile, status: :created, location: @profile }
		    else
		      format.html { render action: "new" }
		      format.json { render json: @profile.errors, status: :unprocessable_entity }
		    end
		  end
	end

  def update 
      @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

	def profile_params
		params.require(:profile).permit(:first_name ,:last_name,:Address,:photo ,:age ,:sex ,:maritial_status  ,:contact)
	end
end
