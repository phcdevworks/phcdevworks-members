module PhcdevworksMembers
  class Member::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksMembers::ListingVersions'

    # Relationships
    belongs_to :profile, class_name: 'PhcdevworksMembers::Member::Profile'
    has_and_belongs_to_many :categories, class_name: 'PhcdevworksMembers::Directory::Category', :join_table => 'categories_listings'

    # Form Fields Validation
    validates :listing_company_name,
      presence: true

    validates :listing_contact_name,
      presence: true

    validates :listing_address_line_1,
      presence: true

    validates :listing_city,
      presence: true

    validates :listing_country,
      presence: true

    validates :listing_province,
      presence: true

    validates :listing_postal_code,
      presence: true

    validates :listing_contact_email,
      presence: true,
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please follow this Email format: *****@********.***" }

    validates :listing_website,
      presence: true,
      format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :listing_phone,
      presence: true,
      format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Member Format: ***-***-****" }

    # Clean URL Define
    friendly_id :phcdev_members_listing_nice_urls, use: [:slugged, :finders]

    def phcdev_members_listing_nice_urls
      [
        [:org_id, :listing_company_name, :listing_contact_name]
      ]
    end

  end
end
