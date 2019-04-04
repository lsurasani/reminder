module MessagesHelper
    def numeric?
        Float(self) != nil rescue false
    end
end
