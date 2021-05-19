class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true #references→外部のテーブルから情報を参照する。optionも忘れずに記述→foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
