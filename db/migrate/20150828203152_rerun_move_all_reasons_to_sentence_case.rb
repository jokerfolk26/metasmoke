class RerunMoveAllReasonsToSentenceCase < ActiveRecord::Migration
  def change
    Reason.all.each do |reason|
      if reason.reason_name.downcase == reason.reason_name
        sentence_case_reason = Reason.find_or_create_by(reason_name: reason.reason_name.humanize)

        sentence_case_reason.posts << reason.posts
        sentence_case_reason.save!

        reason.destroy!
      end 
    end
  end
end
