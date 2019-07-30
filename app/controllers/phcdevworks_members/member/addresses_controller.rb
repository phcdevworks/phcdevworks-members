require_dependency "phcdevworks_members/application_controller"

module PhcdevworksMembers
  class Member::AddressesController < ApplicationController

    # Filters & Security
    #include Phccorehelpers::PhcpluginsHelper
    #before_action :phcmembers_get_member_profile_info
    #before_action :authenticate_user!
    #before_action :set_paper_trail_whodunnit
    before_action :set_member_address, only: [:show, :edit, :update, :destroy]

    # GET /member/addresses
    # GET /member/addresses.json
    def index
      profile = Member::Profile.find(params[:profile_id])
      @member_addresses = profile.addresses.all
    end

    # GET /member/addresses/1
    # GET /member/addresses/1.json
    def show
      profile = Member::Profile.find(params[:profile_id])
      @member_address = profile.addresses.find(params[:id])
      @member_address_versions = PhcdevworksMembers::AddressVersions.where(item_id: @member_address, item_type: 'PhcdevworksMembers::Member::Address')
    end

    # GET /member/addresses/new
    def new
      profile = Member::Profile.find(params[:profile_id])
      @member_address = profile.addresses.build
    end

    # GET /member/addresses/1/edit
    def edit
    end

    # POST /member/addresses
    # POST /member/addresses.json
    def create
      @profile = Member::Profile.find(params[:profile_id])
      @member_address = @profile.addresses.create(member_address_params)
      @member_address.user_id = current_user.id
      respond_to do |format|
        if @member_address.save
          format.html { redirect_to @member_address, notice: 'Address was successfully created.' }
          format.json { render :show, status: :created, location: @member_address }
        else
          format.html { render :new }
          format.json { render json: @member_address.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /member/addresses/1
    # PATCH/PUT /member/addresses/1.json
    def update
      @profile = Member::Profile.find(params[:profile_id])
      respond_to do |format|
        if @member_address.update(member_address_params)
          format.html { redirect_to @member_address, notice: 'Address was successfully updated.' }
          format.json { render :show, status: :ok, location: @member_address }
        else
          format.html { render :edit }
          format.json { render json: @member_address.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /member/addresses/1
    # DELETE /member/addresses/1.json
    def destroy
      @profile = Member::Profile.find(params[:profile_id])
      @member_address = @profile.addresses.find(params[:id])
      @member_address.destroy
      respond_to do |format|
        format.html { redirect_to member_addresses_url, notice: 'Address was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_member_address
      @member_address = Member::Address.find(params[:id])
    end

    # Whitelist
    def member_address_params
      params.require(:member_address).permit(:member_address_line_1, :member_address_line_2, :member_address_city, :member_address_province, :member_address_country, :member_address_postal_code, :member_address_type, :profile_id, :slug, :user_id, :org_id)
    end

  end
end
