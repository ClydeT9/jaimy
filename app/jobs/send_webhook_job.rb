class SendWebhookJob < ApplicationJob
    queue_as :default
    
    def perform(data)
        response = HTTParty.post()
    end
end