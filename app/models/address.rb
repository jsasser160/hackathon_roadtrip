class Address < ApplicationRecord
  belongs_to :location
  validates :street, :city, :state, :zip, presence: true

  def full_address
    "#{self.street} #{self.city} #{self.state} #{self.zip}"
  end
end
