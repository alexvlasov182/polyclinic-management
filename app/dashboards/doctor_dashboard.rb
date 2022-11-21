require 'administrate/base_dashboard'

class DoctorDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    appointments: Field::HasMany,
    main_image: Field::String,
    category: Field::BelongsTo,
    attachment_attachment: Field::HasOne,
    attachment_blob: Field::HasOne,
    email: Field::String,
    encrypted_password: Field::String,
    full_name: Field::String,
    phone: Field::String,
    remember_created_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    reset_password_token: Field::String,
    users: Field::HasMany,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    password: Field::String,
    password_confirmation: Field::String,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    full_name
    category
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    category
    full_name
    phone
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    appointments
    category
    full_name
    phone
    email
    main_image
    password
    password_confirmation
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
