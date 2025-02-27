class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.datetime :starttime
      t.datetime :endtime
      t.string :description

      t.timestamps
    end
  end
end
