# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_21_232537) do

  create_table "action_mailbox_inbound_emails", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.string "message_id", null: false
    t.string "message_checksum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_id", "message_checksum"], name: "index_action_mailbox_inbound_emails_uniqueness", unique: true
  end

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories_listings", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "listing_id", null: false
  end

  create_table "phcdevworks_accounts_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "org_id"
    t.integer "role"
    t.boolean "terms_of_service"
    t.index ["email"], name: "index_phcdevworks_accounts_users_on_email", unique: true
    t.index ["firstname"], name: "index_phcdevworks_accounts_users_on_firstname"
    t.index ["lastname"], name: "index_phcdevworks_accounts_users_on_lastname"
    t.index ["org_id"], name: "index_phcdevworks_accounts_users_on_org_id", unique: true
    t.index ["reset_password_token"], name: "index_phcdevworks_accounts_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_phcdevworks_accounts_users_on_username", unique: true
  end

  create_table "phcdevworks_members_address_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_address_versions"
  end

  create_table "phcdevworks_members_category_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_category_versions"
  end

  create_table "phcdevworks_members_directory_categories", force: :cascade do |t|
    t.string "category_name"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_members_friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "phcm_slugable_type_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "phcm_slug_slugable_type"
    t.index ["sluggable_id"], name: "phcm_slugable_id"
    t.index ["sluggable_type"], name: "phcm_slugable_type"
  end

  create_table "phcdevworks_members_listing_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_listing_versions"
  end

  create_table "phcdevworks_members_member_addresses", force: :cascade do |t|
    t.string "member_address_line_1"
    t.string "member_address_line_2"
    t.string "member_address_city"
    t.string "member_address_province"
    t.string "member_address_country"
    t.string "member_address_postal_code"
    t.string "member_address_type"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.integer "profile_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_phcdevworks_members_member_addresses_on_profile_id"
  end

  create_table "phcdevworks_members_member_listings", force: :cascade do |t|
    t.string "listing_company_name"
    t.string "listing_contact_name"
    t.string "listing_address_line_1"
    t.string "listing_address_line_2"
    t.string "listing_city"
    t.string "listing_country"
    t.string "listing_province"
    t.string "listing_postal_code"
    t.string "listing_phone"
    t.string "listing_contact_email"
    t.string "listing_website"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.integer "profile_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_phcdevworks_members_member_listings_on_profile_id"
  end

  create_table "phcdevworks_members_member_profiles", force: :cascade do |t|
    t.string "member_profile_first_name"
    t.string "member_profile_last_name"
    t.string "member_profile_title"
    t.string "member_profile_email"
    t.string "member_profile_phone"
    t.string "member_profile_notes"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_members_profile_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_profile_versions"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
