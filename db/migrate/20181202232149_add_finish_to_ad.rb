class AddFinishToAd < ActiveRecord::Migration
  def change
    add_column :ads, :finish_date, :date
  end
end
