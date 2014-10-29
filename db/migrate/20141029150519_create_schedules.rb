class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.time :from
      t.time :to
      t.string :day_of_week

      t.timestamps
    end
  end
end
