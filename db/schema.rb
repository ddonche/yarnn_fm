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

ActiveRecord::Schema.define(version: 2019_08_20_014839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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

  create_table "albums", id: :serial, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "title"
    t.text "description"
    t.integer "year"
    t.string "vocals"
    t.integer "user_id"
    t.string "editor"
    t.integer "pseudonym_id"
    t.integer "serial", default: 0, null: false
    t.integer "tracks_count"
    t.index ["pseudonym_id"], name: "index_albums_on_pseudonym_id"
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "blogs", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "published_status"
    t.integer "user_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "pseudo_id"
    t.integer "comments_count"
    t.index ["slug"], name: "index_blogs_on_slug", unique: true
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "comments", id: :serial, force: :cascade do |t|
    t.text "content"
    t.string "commentable_type"
    t.integer "commentable_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", id: :serial, force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_conversations_on_receiver_id"
    t.index ["sender_id", "receiver_id"], name: "index_conversations_on_sender_id_and_receiver_id", unique: true
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "events", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "followed_id"
    t.integer "eventable_id"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "commentable_type"
    t.integer "eventable_type"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "favorites", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "track_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "favorited_user_id"
    t.index ["track_id"], name: "index_favorites_on_track_id"
    t.index ["user_id", "track_id"], name: "index_favorites_on_user_id_and_track_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "flags", force: :cascade do |t|
    t.integer "flaggable_type"
    t.integer "flaggable_id"
    t.integer "flagged_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "flag_type"
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "links", force: :cascade do |t|
    t.string "facebook"
    t.string "twitter"
    t.string "youtube"
    t.string "instagram"
    t.string "reddit"
    t.string "amazon"
    t.string "patreon"
    t.string "github"
    t.string "snapchat"
    t.string "vimeo"
    t.string "soundcloud"
    t.string "itunes"
    t.string "stitcher"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "website"
  end

  create_table "listings", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.string "publisher"
    t.integer "year"
    t.string "language"
    t.string "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "filetype"
    t.string "file"
    t.string "image"
    t.integer "pseudonym_id"
    t.integer "reviews_count"
    t.index ["pseudonym_id"], name: "index_listings_on_pseudonym_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "messages", id: :serial, force: :cascade do |t|
    t.text "body"
    t.boolean "read", default: false
    t.integer "conversation_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "notations", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "notified_by_id"
    t.integer "recipient_id"
    t.integer "notifiable_id"
    t.integer "parent_id"
    t.integer "commentable_type"
    t.integer "notifiable_type"
    t.boolean "read_status", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pseudonyms", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_pseudonyms_on_user_id"
  end

  create_table "relationships", id: :serial, force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "reviews", id: :serial, force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "listing_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.datetime "created_at"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topics", id: :serial, force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "user_id"
    t.integer "comments_count"
  end

  create_table "tracks", id: :serial, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "title"
    t.text "description"
    t.integer "album_id"
    t.string "vocals"
    t.integer "user_id"
    t.string "audio"
    t.integer "explicit", default: 0
    t.string "buy_url"
    t.integer "listing_id"
    t.integer "pseudonym_id"
    t.integer "favorites_count", default: 0
    t.string "voice_site"
    t.integer "play_count"
    t.integer "duration"
    t.integer "comments_count"
    t.index ["pseudonym_id"], name: "index_tracks_on_pseudonym_id"
    t.index ["user_id"], name: "index_tracks_on_user_id"
  end

  create_table "transactions", id: :serial, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "listing_id"
    t.integer "buyer_id"
    t.integer "seller_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "username", limit: 22
    t.string "name"
    t.integer "user_type", default: 0
    t.string "slug"
    t.string "bio"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "uid"
    t.string "stripe_id"
    t.integer "publisher_type", default: 0
    t.integer "favorited_count", default: 0
    t.string "provider"
    t.string "google_token"
    t.string "google_refresh_token"
    t.integer "favorited_by_others_count"
    t.datetime "onboarding_completed_at"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.integer "invited_by_id"
    t.string "invited_by_type"
    t.integer "tracks_count"
    t.integer "comments_count"
    t.integer "topics_count"
    t.string "stripe_subscription_id"
    t.string "card_last4"
    t.integer "card_exp_month"
    t.integer "card_exp_year"
    t.string "card_type"
    t.integer "role", default: 0
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.bigint "votable_id"
    t.string "voter_type"
    t.bigint "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

  create_table "wikis", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "albums", "pseudonyms"
  add_foreign_key "events", "users"
  add_foreign_key "listings", "pseudonyms"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "pseudonyms", "users"
  add_foreign_key "tracks", "pseudonyms"
end
