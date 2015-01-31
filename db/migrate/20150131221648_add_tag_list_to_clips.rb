class AddTagListToClips < ActiveRecord::Migration
  def change
	  add_column :clips, :tag_list, :string
  end
end
