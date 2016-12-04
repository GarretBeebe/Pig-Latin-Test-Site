class CreatePhrase < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
    	t.string "english_phrase", null: false
      	t.string "pig_latin_phrase", null: false
    end
  end
end
