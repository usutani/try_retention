class RetentionsController < ApplicationController
  before_action :set_retention, only: %i[ show update ]

  def show
    @items = [nil, 30, 90, 365, 730]
  end

  def update
    if confirmed? && @retention.update(retention_params)
      redirect_to home_url, notice: 'Retentions successfully saved.'
    else
      @retention = Retention.new(retention_params)
      render status: :unprocessable_entity
    end
  end

  private
    def set_retention
      @retention = Retention.first!
    end

    def retention_params
      params.permit(:cycle, :project).to_h { |k, v| [k, v.presence] }
    end

    def confirmed?
      params[:confirmation] == 'CONFIRM'
    end
end
