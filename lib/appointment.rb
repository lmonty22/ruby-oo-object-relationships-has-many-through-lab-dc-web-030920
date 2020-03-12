require 'pry'

class Appointment

attr_reader :doctor, :patient

@@all = [] 

    def initialize (date, patient, doctor )
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self 
    end

    def self.all 
        @@all 
    end

end