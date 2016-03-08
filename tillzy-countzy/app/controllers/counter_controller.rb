class CounterController < ApplicationController
  def show
    @counter = counter.find(params[:id])
  end

  def new
  end

  # snippet for brevity
end
