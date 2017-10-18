class Event < ApplicationRecord
  has_many :invitations, :foreign_key => :attended_event_id
  has_many :attendees, :through => :invitations, :foreign_key => :attendee_id
  belongs_to :creator, :class_name => "User"

  scope :past, -> { where(:month < Date.today.month || :month == Date.today.month && :day < Date.today.day) }
  scope :future, -> { where(:month > Date.today.month || :month == Date.today.month && :day > Date.today.day) }
=begin
  def self.past
    self.where("month < ? OR month == ? AND day < ?", Date.today.month, Date.today.month, Date.today.day)
  end

  def self.future
    self.where("month > ? OR month == ? AND day > ?", Date.today.month, Date.today.month, Date.today.day)
  end
=end
end