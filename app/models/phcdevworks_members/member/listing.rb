module PhcdevworksMembers
  class Member::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => "PhcdevworksMembers::MemberListingVersions"

    # Relationships
    belongs_to :profile, class_name: "PhcdevworksMembers::Member::Profile"
    belongs_to :optimization, class_name: "PhcdevworksCoreModules::Marketing::Optimization", optional: true
    has_and_belongs_to_many :categories, class_name: "PhcdevworksMembers::Directory::Category", :join_table => "phcdevworks_members_categories_lstings"

    # Form Fields Validation
    validates :member_listing_company_name,
      presence: true

    validates :member_listing_contact_name,
      presence: true

    validates :member_listing_address_line_1,
      presence: true

    validates :member_listing_city,
      presence: true

    validates :member_listing_country,
      presence: true

    validates :member_listing_province,
      presence: true

    validates :member_listing_postal_code,
      presence: true

    validates :member_listing_contact_email,
      presence: true,
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please follow this Email format: *****@********.***" }

    validates :member_listing_website,
      presence: true,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :member_listing_phone,
      presence: true,
      format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Member Format: ***-***-****" }

    # Clean URL Define
    friendly_id :members_listing_nice_urls, use: [:slugged, :finders]

    def members_listing_nice_urls
      [
        [:member_listing_company_name, :member_listing_contact_name]
      ]
    end

  end
end
