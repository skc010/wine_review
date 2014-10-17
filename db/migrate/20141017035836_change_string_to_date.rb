class ChangeStringToDate < ActiveRecord::Migration
  def change
  	change_column :log_entries, :tasted_on, :datetime;
  end
end
