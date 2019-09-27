class HorsesController < ApplicationController
   before_action :space_del
    
    def index
 
        #unless params[:ml] ==""  && params[:ml2] ==""  && params[:ml3a] ==""   && params[:ml2_f] =="" && params[:ml3a_f] =="" 
        unless params[:ml].blank?  && params[:ml2].blank?  && params[:ml3a].blank?   && params[:ml2_f].blank? && params[:ml3a_f].blank? 

            if params[:ml] ==""
                @ml = Horse.all
            else
                @ml = Horse.ml(params[:ml])
            end

            if params[:ml2] ==""
                @ml2 = @ml
            else
                @ml2 = @ml.ml2(params[:ml2])
            end

            if params[:ml3a] ==""
                @ml3a = @ml2
            else
                @ml3a = @ml2.ml3a(params[:ml3a])
            end
            
            if params[:ml2_f] ==""
                @ml2_f = @ml3a
            else 
                @ml2_f = @ml3a .ml2_f(params[:ml2_f])
            end
            
            if params[:ml3a_f] ==""
                @ml3a_f =  @ml2_f
            else
                @ml3a_f =  @ml2_f.ml3a_f(params[:ml3a_f]) 
            end
        end
            
            @gwin = Horse.gwin(params[:gwin]) 
            @ghistory = Horse.ghistory(params[:ghistory]) 
            
            @sexosu = Horse.sex(params[:sexosu]) 
            @sexmesu = Horse.sex(params[:sexmesu]) 
            
        if @gwin.present? && @ghistory.present?
            @gcheck  = @gwin + @ghistory
        end
            
    end
    

    
    def space_del
        
        unless params[:ml] ==nil  && params[:ml2] ==nil  && params[:ml3a] ==nil && params[:ml2_f] ==nil && params[:ml3a_f] ==nil # 全部nilだと動かさない index読み込み時
            params[:ml] =  params[:ml].gsub(/[[:space:]]/,"")
            params[:ml2] =  params[:ml2].gsub(/[[:space:]]/,"")
            params[:ml3a] =  params[:ml3a].gsub(/[[:space:]]/,"")
            params[:ml2_f] = params[:ml2_f].gsub(/[[:space:]]/,"")
            params[:ml3a_f] = params[:ml3a_f] .gsub(/[[:space:]]/,"")
        end
        

    end
end
