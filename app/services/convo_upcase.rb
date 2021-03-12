class ConversationTitleUpcase < ApplicationService
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def call 
        title.upcase 
    end
end