# frozen_string_literal: true

class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :user_id, uniqueness: { scope: :event_id }

  delegate :name, :honorific_name,
           to: :user, prefix: :user, allow_nil: true
end
