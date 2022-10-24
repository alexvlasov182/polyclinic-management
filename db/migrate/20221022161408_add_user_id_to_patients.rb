class AddUserIdToPatients < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :user, index: true, foreign_key: true
  end
end
