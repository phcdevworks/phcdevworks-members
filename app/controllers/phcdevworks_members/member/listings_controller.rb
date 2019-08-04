require_dependency "phcdevworks_members/application_controller"

module PhcdevworksMembers
  class Member::ListingsController < ApplicationController

    # Filters & Security
    #include Phccorehelpers::PhcpluginsHelper
    #before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_member_listing, only: [:show, :edit, :update, :destroy]

    # GET /member/listings
    # GET /member/listings.json
    def index
      @member_listings = member_profile.listings.all
    end

    # GET /member/listings/1
    # GET /member/listings/1.json
    def show
      @meber_listing = member_profile.listings.find(params[:id])
      @member_listing_versions = PhcdevworksMembers::ListingVersions.where(item_id: @member_listing, item_type: 'PhcdevworksMembers::Member::Listing')
    end

    # GET /member/listings/new
    def new
      @member_listing = member_profile.listings.build
    end

    # GET /member/listings/1/edit
    def edit
      @member_profile = Member::Profile.friendly.find(params[:profile_id])
    end

    # POST /member/listings
    # POST /member/listings.json
    def create
      @member_listing = member_profile.listings.create(member_listing_params)
      #@member_listing.user_id = current_user.id
      respond_to do |format|
        if @member_listing.save
          format.html { redirect_to member_profile_listings_url, :flash => { :success => 'Member Listing has been Added' }}
          format.json { render :show, status: :created, location: @member_listing }
        else
          format.html { render :new }
          format.json { render json: @member_listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /member/listings/1
    # PATCH/PUT /member/listings/1.json
    def update
      @member_profile = Member::Profile.friendly.find(params[:profile_id])
      respond_to do |format|
        if @member_listing.update(member_listing_params)
          format.html { redirect_to member_profile_listings_url, :flash => { :notice => 'Member Listing has been Updated.' }}
          format.json { render :show, status: :ok, location: @member_listing }
        else
          format.html { render :edit }
          format.json { render json: @member_listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /member/listings/1
    # DELETE /member/listings/1.json
    def destroy
      @member_listing = member_profile.listings.find(params[:id])
      @member_listing.destroy
      respond_to do |format|
        format.html { redirect_to member_profile_listings_url, :flash => { :error => 'Member Listing has been Removed' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_member_listing
     @member_listing = Member::Listing.friendly.find(params[:id])
    end

    def member_profile
      @member_profile = Member::Profile.friendly.find(params[:profile_id])
    end

    # Whitelist
    def member_listing_params
      params.require(:member_listing).permit(:listing_company_name, :listing_contact_name, :listing_address_line_1, :listing_address_line_2, :listing_city, :listing_country, :listing_province, :listing_postal_code, :listing_phone, :listing_contact_email, :listing_website, :profile_id, :slug, :user_id, :org_id, category_ids: [])
    end

  end
end
