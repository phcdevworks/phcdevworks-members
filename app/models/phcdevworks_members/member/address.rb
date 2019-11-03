module PhcdevworksMembers
  class Member::Address < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksMembers::MemberAddressVersions'

    # Relationships
    belongs_to :profile, class_name: 'PhcdevworksMembers::Member::Profile'

    # Form Fields Validation
    validates :address_line_1,
      presence: true

    validates :address_city,
      presence: true

    validates :address_province,
      presence: true

    validates :address_country,
      presence: true

    validates :address_postal_code,
      presence: true

    # Clean URL Define
    friendly_id :phcdev_members_address_nice_urls, use: [:slugged, :finders]

    def phcdev_members_address_nice_urls
      [
        [:address_type, :address_city, :address_province]
      ]
    end

  end
end
