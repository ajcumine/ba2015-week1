class HomeController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @count = 0
  end

  def update
    @count = params[:count]
    puts params[:count]
    render status: 200, json: { message: "Count successfully updated to #{params[:count]}" }
  end

  def show
    @results = get_results(params[:id])
  end

  def search
    redirect_to fizzbuzz_path(params[:id])
  end

  def get_results(number)
    i = 1
    results = []
    while i <= number.to_i do
      results << Fizzbuzz.run(i)
      i += 1
    end
    results
  end
end
