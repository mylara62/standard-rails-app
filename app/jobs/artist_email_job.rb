class ArtistEmailJob < ActiveJob::Base
	queue_as :default

  # def perform
  #   emails.each { |e| NewsletterMailer.deliver_text_to_email(text, e) }
  # end

  # def max_run_time
  #   120 # seconds
  # end
end