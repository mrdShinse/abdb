# frozen_string_literal: true

class AttendancesController < ApplicationController
  before_action -> { @event = Event.find(params[:event_id]) }
  before_action :set_attendance, only: %i[destroy]

  def create
    @attendance = @event.attendances.build(attendance_params)

    if @attendance.save
      redirect_to event_path(@event), flash: { notice: '参加しました' }
    else
      redirect_to event_path(@event), flash: { error: '更新に失敗しました。参加者を確認してください。' }
    end
  end

  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_attendance
    @attendance = @event.attendances.find(params[:id])
  end

  def attendance_params
    params.require(:attendance).permit(:user_id)
  end
end
