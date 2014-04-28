class Surrogate < ActiveRecord::Base
  include AASM

  aasm :column => 'status' do
    state :applied, :initial => true
    state :accepted
    state :rejected
    state :approved

    # new methods on Task
    event :accept do
      transitions :from => :applied, :to => :accepted
    end

    event :reject do
      transitions :from => :applied, :to => :rejected
    end

    event :approve do
      transitions :from => :accepted, :to => :approved
    end

    event :dont_approve do
      transitions :from => :applied, :to => :approved, :guard => :illegal_transition
    end

    event :stay_rejected do
      transitions :from => :rejected, :to => :approved, :guard => :illegal_transition
    end

    def illegal_transition
      false
    end

  end

  has_many :tasks, dependent: :destroy
  validates :name, :status, presence: true

  STATUS_OPTIONS = [
    'applied',
    'accepted',
    'rejected',
    'approved'
  ]
  validates :status, inclusion: { in: STATUS_OPTIONS }

  def rejected_surrogates
     if self.status == 'rejected'
       self.name
     end
  end

  def more_than_two
    if self.tasks.closed.count > 2
      self.name
    end
  end

end

