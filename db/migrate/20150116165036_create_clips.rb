class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :youtube_id
      t.float :start
      t.float :end

      t.timestamps
    end
  end
end
