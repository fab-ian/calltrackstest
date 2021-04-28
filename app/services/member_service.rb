# frozen_string_literal: true

class MemberService
  def initialize(member)
    @member = member
    @fail_or_success = :success
  end

  def call
    if @member.valid?
      @member.save
    else
      @fail_or_success = :fail unless unique_email_error?
    end

    @fail_or_success
  end

  private

  def unique_email_error?
    @member.errors.select { |error| error.type == :taken }.present?
  end
end
