class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # 会員種別（個人 or 団体）
      t.string :member_type, null: false
      # 氏名（団体の場合、代表者名）
      t.string :human_name, null: false
      # 団体名
      t.string :organization_name
      # 入会予定日
      t.string :admission_expected_date, null: false
      # 郵便番号
      t.string :postal_code, null: false
      # 住所
      t.string :address, null: false
      # 電話番号
      t.string :phone_number, null: false
      # メールアドレス
      t.string :email, null: false, default: ""
      # 所属等
      t.string :affiliation_etc
      # パスワード
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
