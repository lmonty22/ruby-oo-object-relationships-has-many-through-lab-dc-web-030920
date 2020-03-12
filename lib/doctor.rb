class Doctor
attr_reader :name

@@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end

    def appointments
        Appointment.all.find_all do |a|
            a.doctor == self 
        end 
    end 

    def new_appointment (patient, date)
        Appointment.new(date, patient, self)
    end

    def patients 
        self.appointments.map do |a|
            a.patient
        end
    end 

end 