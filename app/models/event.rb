class Event < ApplicationRecord
  has_many :invitations, :foreign_key => :attended_event_id
  has_many :attendees, :through => :invitations, :foreign_key => :attendee_id
  belongs_to :creator, :class_name => "User"
end