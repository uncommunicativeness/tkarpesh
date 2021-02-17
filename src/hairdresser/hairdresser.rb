class Hairdresser
  attr_reader :time_for_haircut, :work_time

  def initialize(time_for_haircut)
    @work_time = 0
    @time_for_haircut = time_for_haircut
  end

  def work
    @work_time += time_for_haircut
    @time_for_haircut
  end
end

