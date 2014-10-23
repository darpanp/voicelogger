class CreateVoiceLoggers < ActiveRecord::Migration
  def change
    create_table :voice_loggers do |t|
      t.string :emailaddress
      t.text :detectedstring

      t.timestamps
    end
  end
end
