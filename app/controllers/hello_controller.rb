class HelloController < ApplicationController
  def show
    @message = 'Hello, World!'
  end

  def show_days
    render action: 'days'
  end

  def calc_days
    @year = params[:year].to_i
    @month = params[:month].to_i
    @day = params[:day].to_i

    # ここに何か書く

    @day_in_week = 'hoge曜日'
    render action: 'days'
  end
end
