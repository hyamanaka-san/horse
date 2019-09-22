class HorsesController < ApplicationController
   before_action :space_del
    
    def index
 
        unless params[:ml] ==""  && params[:ml2] ==""  && params[:ml2_f] =="" && params[:ml3a_f] =="" 
          
        @ml = Horse.ml(params[:ml])
        
        @ml2 = Horse.ml2(params[:ml2])
         
        @ml2_f = Horse.ml2_f(params[:ml2_f])
           
        @ml3a_f = Horse.ml3a_f(params[:ml3a_f]) 
         # @money = Uma.money(params[:money]) 
        end  
        

    
    end
    
    def space_del
        
        unless params[:ml] ==nil  && params[:ml2] ==nil  && params[:ml2_f] ==nil && params[:ml3a_f] ==nil # 全部nilだと動かさない index読み込み時
            params[:ml] =  params[:ml].gsub(/[[:space:]]/,"")
            params[:ml2] =  params[:ml2].gsub(/[[:space:]]/,"")
            params[:ml2_f] = params[:ml2_f].gsub(/[[:space:]]/,"")
            params[:ml3a_f] = params[:ml3a_f] .gsub(/[[:space:]]/,"")
        end
        

    end

end