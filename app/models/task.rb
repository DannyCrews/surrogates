class Task < ActiveRecord::Base
  include AASM

  aasm :column => 'status' do
    state :open
    state :closed

    # new methods on Task
    event :open_task do
      transitions :from => :closed, :to => :open
    end

    event :close_task do
      transitions :from => :open, :to => :closed
    end

  end

  belongs_to :surrogate

  validates :name, presence: true
  validates :description, length: {minimum: 4}
  validates :status, presence: true
end
