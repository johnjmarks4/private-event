class User < ApplicationRecord
  has_many :invitations, :foreign_key => :attendee_id
  has_many :attended_events, :through => :invitations, :foreign_key => :attended_event_id
  has_many :created_events, :foreign_key => :creator_id, :class_name => "Event"

  def upcoming_events
    self.attended_events.where("month > ? OR month = ? AND day > ?", Date.today.month, Date.today.month, Date.today.day)
  end

  def previous_events
    self.attended_events.where("month < ? OR month = ? AND day < ?", Date.today.month, Date.today.month, Date.today.day)
  end
end