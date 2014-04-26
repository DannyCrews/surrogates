class Task < ActiveRecord::Base
  belongs_to :surrogate
  validates :name, presence: true
  validates :description, length: {minimum: 4}
  validates :status, presence: true
end
