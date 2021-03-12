module Services
    class ConversationTitleUpcase < Service
        attr_reader :title

        def initialize(title)
            @title = title
        end

        def call(title:) 
            title.upcase 
        end
    end
end 