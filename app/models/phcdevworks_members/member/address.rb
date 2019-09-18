module PhcdevworksMembers
  class Member::Address < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksMembers::AddressVersions'

    # Relationships
    belongs_to :profile, class_name: 'PhcdevworksMembers::Member::Profile'

    # Form Fields Validation
    validates :member_address_line_1,
      presence: true

    validates :member_address_city,
      presence: true

    validates :member_address_province,
      presence: true

    validates :member_address_country,
      presence: true

    validates :member_address_postal_code,
      presence: true

    # Clean URL Define
    friendly_id :phcdev_members_address_nice_urls, use: [:slugged, :finders]

    def phcdev_members_address_nice_urls
      [
        [:member_address_type, :member_address_city, :member_address_province]
      ]
    end

  end
end
