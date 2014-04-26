class Surrogate < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  validates :name, :status, presence: true
end
