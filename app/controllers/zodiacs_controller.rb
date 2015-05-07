class ZodiacsController < ApplicationController

  def sign
    @zodiac = Zodiac.find_by(:sign=>params["the_sign"])

    render 'default'
  end


  def id
    @zodiac = Zodiac.find_by(:id=>params["the_id"])

    render 'default'
  end



  def creature
    @zodiac = Zodiac.find_by(:creature=>params["the_creature"])

    render 'default'

  end



  def new_form
    sign = params[:symbol]
    creature = params[:animal]
    fortune=params[:horoscope]
  end

  def get_id
    @zodiac = Zodiac.find_by(:id=>params["id"])

    render 'default'
  end

  def create_row

    @sign = params[:symbol]

    @creature = params[:animal]

    @fortune =params[:horoscope]
    z =  Zodiac.new
    z.creature = @creature.downcase
    z.sign = @sign.downcase
    z.fortune = @fortune
    z.save
    redirect_to('/zodiacs/')

  end

  def index
    @list_of_zodiacs = Zodiac.all
  end

  def delete
    z = Zodiac.find(params["the_id"])
z.destroy
    redirect_to('/zodiacs/')

  end


end
