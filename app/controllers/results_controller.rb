class ResultsController < ApplicationController
  def index
    @search = CardPlan.search(params[:search])
    @card_plans = @search.all
  end
  
  def insert
    @array = params[:card_plan].to_a
    @array.each do |x|
      @krs_id = x[0]
      @nilai = x[1]
      CardPlan.find(@krs_id).update_attributes(result: @nilai)
    end
    
    redirect_to results_path, notice: 'Nilai berhasil di update'
  end

end