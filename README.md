#テーブル設計
<!-- ユーザー登録　-->
## users　テーブル

| Column             | Type   | Options                 |
| ------------------ | ------ | ------------------------|
| name               | string | null:false              |
| name_kana          | string | null:false              |
| nickname           | string | null:false              |
| email              | string | null:false, unique:true |
| encrypted_password | string | null:false              |

### Association

- has_many :room_users

<!-- タグ付け機能 -->
## tags　テーブル

| Column             | Type        | Options                      |
| ------------------ | ---------- | ------------------------------|
| text_tag           | string     | null:false                    |
| text_memo          | string     | null:false                    |
| user               | references | null:false, foreign_key: true |
### Association


<!-- 案件チャット機能 -->
## rooms　テーブル

| Column             | Type   | Options                 |
| ------------------ | ------ | ------------------------|
| project_title      | string | null:false              |
| memo               | string | null:false              |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## messages　テーブル

| Column              | Type       | Options                                   |
| ------------------- | ---------- | ------------------------------------------|
| content             | string     | null:false                                |
| user                | references | null:false, foreign_key:true              |
| room                | references | null:false, foreign_key:true              |

### Association

- belongs_to :room
- belongs_to :user

## room_users　テーブル

| Column                      | Type       | Options                                   |
| --------------------------- | ---------- | ------------------------------------------|
| user                        | references | null:false, foreign_key:true              |
| room                        | references | null:false, foreign_key:true              |

### Association

- belongs_to :user
- belongs_to :room

