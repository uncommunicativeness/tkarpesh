require './client'
require './hairdresser'

class Barbershop
  def initialize(clients_number, times_arr)
    @clients = []
    clients_number.times { @clients.append(Client.new) }

    @hairdressers = []
    times_arr.each { |time_for_haircut| @hairdressers.append(Hairdresser.new(time_for_haircut)) }
  end

  def work
    @hairdressers.each(&:work)
  end

  def work_time
    @hairdressers.min_by(&:work_time).work_time
  end
end

barbershop = Barbershop.new(19, [25, 17, 12, 21, 19, 17])
barbershop.work
puts barbershop.work_time
