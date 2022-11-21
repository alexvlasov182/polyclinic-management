require 'administrate/base_dashboard'

class PrescriptionDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    appointment: Field::BelongsTo,
    prescript: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    appointment
    prescript
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    appointment
    prescript
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    appointment
    prescript
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
