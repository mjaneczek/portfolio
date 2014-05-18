class JobCalculatorService
  def initialize
    @oldest_job = Job.order(:start_day).last
    @commercial_jobs = Job.where commercial: true
  end

  def total_commercial_work
    days_count = sum_jobs_in_day @commercial_jobs
    time_interval days_count
  end

  def programmer_for
    days_count = Date.today - @oldest_job.start_day
    time_interval days_count
  end

  private

  def sum_jobs_in_day(jobs)
    jobs.map do |job|
      (job.end_day || Data.today) - job.start_day
    end.inject(:+)
  end

  def time_interval(number_of_days)
    interval = Date.new(0) + number_of_days
    { years: interval.year, months: interval.month - 1, days: interval.day - 1}
  end
end
