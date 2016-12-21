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

    date = Date.new @year, @month, @day
    days = %w{日 月 火 水 木 金 土}
    dayname = days[date.cwday % 7]

    @day_in_week = "#{dayname}曜日"
    render action: 'days'
  end
end
