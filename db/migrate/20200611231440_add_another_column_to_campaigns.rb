class AddAnotherColumnToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_column :campaigns, :day_of_week, :string  
  end
end
