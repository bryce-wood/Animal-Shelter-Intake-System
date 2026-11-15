class Animal < ApplicationRecord
  validates :name, :species, :intake_date, presence: true
  validates :adoption_status, inclusion: { in: %w[available pending adopted], message: 'must be "available", "pending", or "adopted"' }
  validates :sex, inclusion: { in: %w[M F], message: 'must be "M" or "F"' }, allow_blank: true
  validates :vaccinated, :sterilized, inclusion: { in: [true, false], message: 'must be true or false' }
  validates :age_in_months, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
end
