class ProfilesController < InheritedResources::Base
	def create
		@profile = Profile.new( profile_params )
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

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

	def profile_params
		params.require(:profile).permit(:first_name ,:last_name,:Address,:photo ,:age ,:sex ,:maritial_status  ,:contact)
	end
end