class AddColumnToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_column :campaigns, :play_date, :datetime
  end
end
