module PhcdevworksMembers
  class Directory::Category < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => "PhcdevworksMembers::DirectoryCategoryVersions"

    # Relationships
    has_and_belongs_to_many :listings, class_name: "PhcdevworksMembers::Member::Listing", :join_table => "phcdevworks_members_categories_lstings", :dependent => :destroy
    belongs_to :optimization, class_name: "PhcdevworksCoreModules::Marketing::Optimization", optional: true

    # Form Fields Validation
    validates :directory_category_name,
      presence: true

    # Clean URL Define
    friendly_id :directory_category_nice_urls, use: [:slugged, :finders]

    def directory_category_nice_urls
      [
        [:directory_category_name]
      ]
    end

  end
end
