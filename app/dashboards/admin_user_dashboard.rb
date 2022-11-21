require 'administrate/base_dashboard'

class AdminUserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    full_name: Field::String,
    phone: Field::String,
    remember_created_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    reset_password_token: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    password: Field::String,
    password_confirmation: Field::String,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    full_name
    email
    encrypted_password
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    email
    encrypted_password
    full_name
    phone
    remember_created_at
    reset_password_sent_at
    reset_password_token
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    email
    encrypted_password
    full_name
    phone
    remember_created_at
    reset_password_sent_at
    reset_password_token
    password
    password_confirmation
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
