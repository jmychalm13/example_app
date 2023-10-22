class MyExamplesController < ApplicationController
  def random_fortune
    fortune = ""
    random_number = rand(3)
    if random_number == 0
      fortune = "You will have an awesome day!"
    elsif random_number == 1
      fortune = "You will be a coder soon!"
    elsif random_number == 2
      fortune = "You will be a coder very soon!"
    end


    render json: {message: "#{fortune}"}
  end

  def lotto_nums
    numbers = []
    6.times do
      random_number = rand(60)
      numbers << random_number
    end

    render json: {lotto_numbers: "#{numbers}"}
  end
end
