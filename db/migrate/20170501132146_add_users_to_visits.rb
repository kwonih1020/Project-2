class AddUsersToVisits < ActiveRecord::Migration[5.0]
  def change
    add_reference :visits, :user, foreign_key: true
  end
end
