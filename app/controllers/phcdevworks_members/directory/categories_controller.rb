require_dependency "phcdevworks_members/application_controller"

module PhcdevworksMembers
  class Directory::CategoriesController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_directory_category, only: [:show, :edit, :update, :destroy]

    # GET /directory/categories
    # GET /directory/categories.json
    def index
      @directory_categories = Directory::Category.all
    end

    # GET /directory/categories/1
    # GET /directory/categories/1.json
    def show
      @directory_category_versions = PhcdevworksMembers::CategoryVersions.where(item_id: @directory_category, item_type: 'PhcdevworksMembers::Directory::Category')
    end

    # GET /directory/categories/new
    def new
      @directory_category = Directory::Category.new
    end

    # GET /directory/categories/1/edit
    def edit
    end

    # POST /directory/categories
    # POST /directory/categories.json
    def create
      @directory_category = Directory::Category.new(directory_category_params)
      @directory_category.user_id = current_user.id
      @directory_category.org_id = current_user.org_id
      respond_to do |format|
        if @directory_category.save
          format.html { redirect_to directory_categories_path, :flash => { :success => 'Directory Category has been Created.' }}
          format.json { render :show, status: :created, location: @directory_category }
        else
          format.html { render :new }
          format.json { render json: @directory_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /directory/categories/1
    # PATCH/PUT /directory/categories/1.json
    def update
      respond_to do |format|
        if @directory_category.update(directory_category_params)
          format.html { redirect_to directory_categories_path, :flash => { :notice => 'Directory Category has been Updated.' }}
          format.json { render :show, status: :ok, location: @directory_category }
        else
          format.html { render :edit }
          format.json { render json: @directory_category.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /directory/categories/1
    # DELETE /directory/categories/1.json
    def destroy
      @directory_category.destroy
      respond_to do |format|
        format.html { redirect_to directory_categories_path, :flash => { :error => 'Directory Category and all Listing Connections Removed' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_directory_category
      @directory_category = Directory::Category.friendly.find(params[:id])
    end

    # Whitelist
    def directory_category_params
      params.require(:directory_category).permit(:category_name, :slug, :user_id, :org_id)
    end

  end
end
