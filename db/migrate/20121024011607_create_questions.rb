class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	# properties
    	t.string :title
    	t.text :query
    	t.string :kind

    	#associations

      t.timestamps
    end
    # indexes
    
  end
end
