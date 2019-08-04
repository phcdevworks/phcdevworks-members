require_dependency "phcdevworks_members/application_controller"

module PhcdevworksMembers
  class Member::ProfilesController < ApplicationController

    # Filters & Security
    include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_profile, only: [:show, :edit, :update, :destroy]
    layout "phcdevworks_members/member_profile", :only => [ :show ]

    # GET /member/profiles
    # GET /member/profiles.json
    def index
      @member_profiles = Member::Profile.all
    end

    # GET /member/profiles/1
    # GET /member/profiles/1.json
    def show
      @member_profile_versions = PhcdevworksMembers::ProfileVersions.where(item_id: @member_profile, item_type: 'PhcdevworksMembers::Member::Profile')
    end

    # GET /member/profiles/new
    def new
      @member_profile = Member::Profile.new
    end

    # GET /member/profiles/1/edit
    def edit
    end

    # POST /member/profiles
    # POST /member/profiles.json
    def create
      @member_profile = Member::Profile.new(member_profile_params)
      @member_profile.user_id = current_user.id
      respond_to do |format|
        if @member_profile.save
          format.html { redirect_to @member_profile, :flash => { :success => 'Member Profile has been Added.' }}
          format.json { render :show, status: :created, location: @member_profile }
        else
          format.html { render :new }
          format.json { render json: @member_profile.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /member/profiles/1
    # PATCH/PUT /member/profiles/1.json
    def update
      respond_to do |format|
        if @member_profile.update(member_profile_params)
          format.html { redirect_to @member_profile, :flash => { :notice => 'Member Profile has been Updated.' }}
          format.json { render :show, status: :ok, location: @member_profile }
        else
          format.html { render :edit }
          format.json { render json: @member_profile.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /member/profiles/1
    # DELETE /member/profiles/1.json
    def destroy
      @member_profile.destroy
      respond_to do |format|
        format.html { redirect_to member_profiles_url, :flash => { :error => 'Member Profile, Listings and Addresses have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_member_profile
      @member_profile = Member::Profile.friendly.find(params[:id])
    end

    # Whitelist
    def member_profile_params
      params.require(:member_profile).permit(:member_profile_first_name, :member_profile_last_name, :member_profile_title, :member_profile_email, :member_profile_phone, :member_profile_notes, :slug, :user_id, :org_id)
    end

  end
end
