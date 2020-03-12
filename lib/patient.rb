class Patient
    
@@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def appointments 
        Appointment.all.find_all do |a|
            a.patient == self 
        end 
    end

    def new_appointment(doctor, date)
        Appointment.new(date,self,doctor)
    end

    def doctors
        self.appointments.map do |a|
            a.doctor
        end
    end

    def self.all 
        @@all 
    end 
end 

