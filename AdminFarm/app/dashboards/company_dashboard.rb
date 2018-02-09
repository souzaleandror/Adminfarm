require "administrate/base_dashboard"

class CompanyDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    slogan: Field::String,
    phone: Field::String,
    fax: Field::String,
    cel: Field::String,
    description: Field::String,
    info: Field::String,
    email: Field::String,
    contact_email: Field::String,
    mission: Field::Text,
    vision: Field::Text,
    valuables: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :slogan,
    :phone,
    :email,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :slogan,
    :phone,
    :fax,
    :cel,
    :description,
    :info,
    :email,
    :contact_email,
    :mission,
    :vision,
    :valuables,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :slogan,
    :phone,
    :fax,
    :cel,
    :description,
    :info,
    :email,
    :contact_email,
    :mission,
    :vision,
    :valuables,
  ].freeze

  # Overwrite this method to customize how companies are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(company)
     "#{company.name}"
  end
end