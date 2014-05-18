class Api::JobsController < Api::BaseController
  def index
    render json: Job.all.order('start_day DESC')
  end

  def summary
    calculator = JobCalculatorService.new

    render json: {
        total_commercial_work: calculator.total_commercial_work,
        programmer_for: calculator.programmer_for
    }
  end
end
