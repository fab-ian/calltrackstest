# frozen_string_literal: true

class Member < ApplicationRecord
  validates :email, presence: true, uniqueness: true
end
