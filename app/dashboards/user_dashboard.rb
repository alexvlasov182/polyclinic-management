require 'administrate/base_dashboard'

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    appointments: Field::HasMany,
    doctors: Field::HasMany,
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
    appointments
    doctors
    email
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    appointments
    doctors
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
    appointments
    doctors
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
