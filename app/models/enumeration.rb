class Enumeration < ApplicationRecord
    # scope :category, -> {where(: "category")}
    
    class << self 

        # get only a type and change into hash
        #
        # @param [String]
        # @return [Hash]  {2=>"concrete", 1=>"block"}
        def getHash(code_type)
            enums = where(code_type: code_type)
            results = enums.map{ |enum| [enum.code_id, enum.value] }
            Hash[results]
        end
    end
end
