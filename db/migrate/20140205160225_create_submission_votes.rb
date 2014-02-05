class CreateSubmissionVotes < ActiveRecord::Migration
  def change
    create_table :submission_votes do |t|
      t.integer :user_id
      t.integer :submission_id
      t.timestamps
    end
  end
end
