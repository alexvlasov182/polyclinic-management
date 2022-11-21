require 'administrate/base_dashboard'

class AppointmentDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    appointment_date: Field::DateTime,
    doctor: Field::BelongsTo,
    prescription: Field::HasOne,
    user: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    appointment_date
    doctor
    prescription
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    appointment_date
    doctor
    prescription
    user
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    appointment_date
    doctor
    prescription
    user
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
