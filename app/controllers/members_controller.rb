# frozen_string_literal: true

class MembersController < ApplicationController
  before_action :new_member, only: %i[new index]

  def new; end

  def create
    @member = Member.new(member_params)

    fail_or_success = MemberService.new(@member).call

    if fail_or_success == :success
      redirect_to :members_thank_you
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    render :new
  end

  private

  def member_params
    params.require(:member).permit(:email, :name)
  end

  def new_member
    @member = Member.new
  end
end
