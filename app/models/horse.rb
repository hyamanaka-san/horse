class Horse < ApplicationRecord
    
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
    
end
