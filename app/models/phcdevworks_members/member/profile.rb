module PhcdevworksMembers
  class Member::Profile < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksMembers::ProfileVersions'

    # Profile Gravatar
    include Gravtastic
    gravtastic :member_profile_email

    # Relationships
    has_many :addresses, class_name: 'Member::Address', :dependent => :destroy
    has_many :listings, class_name: 'Member::Listing', :dependent => :destroy

    # Form Fields Validation
    validates :member_profile_first_name,
      presence: true

    validates :member_profile_last_name,
      presence: true

    validates :member_profile_title,
      presence: true

    validates :member_profile_email,
      presence: true,
      format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please follow this Email format: *****@********.***" }

    validates :member_profile_phone,
      presence: true,
      format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/, message: "Please Follow this Phone Number Format: ***-***-****" }

    # Clean URL Define
    friendly_id :phcdev_members_profile_nice_urls, use: [:slugged, :finders]

    def phcdev_members_profile_nice_urls
      [
        [:org_id, :member_profile_first_name, :member_profile_last_name]
      ]
    end

  end
end
