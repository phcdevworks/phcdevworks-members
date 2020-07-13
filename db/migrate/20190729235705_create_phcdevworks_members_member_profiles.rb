class CreatePhcdevworksMembersMemberProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_members_member_profiles do |t|

      t.string :member_profile_first_name
      t.string :member_profile_last_name
      t.string :member_profile_title
      t.string :member_profile_email
      t.string :member_profile_phone
      t.text :member_profile_notes

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
