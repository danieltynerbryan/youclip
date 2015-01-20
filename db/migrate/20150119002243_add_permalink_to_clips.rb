class AddPermalinkToClips < ActiveRecord::Migration
  def change
	  add_column :clips, :permalink, :string
  end
end
