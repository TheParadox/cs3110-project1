class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
			t.string :firstName;
			t.string :lastName;
			t.string :username;
			t.string :email;
			t.string :password;

      t.timestamps null: false
    end
  end
end
