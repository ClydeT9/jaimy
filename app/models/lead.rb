class Lead < ApplicationRecord
    after_update :send_create_webhook!

    def send_create_webhook!
        SendWebhookJob.perform_later({
            first_name: first_name,
            last_name: last_name,
        })
    end
end