class Horse < ApplicationRecord
    
    #scope :gwin, -> { where("gwin = 1") }
    scope :ghis, -> { where("ghistory > 0") }
    
    def self.ml(ml)
     
        unless ml == nil
          #   if search == nil redirect_to umas
         # @uma = 
            Horse.where(['ml LIKE ?', "#{ml}%"])
           
        #@mlgroup = Horse.group(:ml).having('count(*) >= 2')
        #p @mlgroup 
        #raise
        end

    end
    
    def self.ml2(ml2) 

        unless ml2 == nil
          #   if search == nil redirect_to umas
         # @uma = 
           Horse.where(['ml2 LIKE ?', "#{ml2}%"])
          
        end
    end
    
    def self.ml3a(ml3a) 
     
        unless ml3a == nil

            Horse.where(['ml3a LIKE ?', "#{ml3a}%"])
            #@ml2.where(['ml3a LIKE ?', "#{ml3a}%"])

        end
    end
    
    def self.ml2_f(ml2_f) 
     
        unless ml2_f == nil
          #   if search == nil redirect_to umas
         # @uma = 
            Horse.where(['ml2_f LIKE ?', "#{ml2_f}%"])

        end
    end
    
    def self.ml3a_f(ml3a_f)
     
        unless ml3a_f == nil
          #   if search == nil redirect_to umas
         # @uma = 
            Horse.where(['ml3a_f LIKE ?', "#{ml3a_f}%"])

        end
    end

    def self.gwin(gwin)
     
        unless gwin == nil

           # Horse.where(['gwin LIKE ?', "#{gwin}%"])
            Horse.where("gwin = 1")
        end
    end
    
    def self.ghistory(ghistory)
 
        unless ghistory == nil
           # Horse.where(['gwin LIKE ?', "#{gwin}%"])
            Horse.ghis
            
        end
    end

   # def self.sex(sex)
    #p sex 
   
     #raise
    #    unless sex == nil

           # Horse.where(['sex LIKE ?', "#{boba}"])
     #       Horse.where("sex == boba")
      #  end
#    end
    
end
