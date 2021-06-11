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

- has_many :tags
- has_many :projects
- has_many :comments

<!-- タグ付け機能 -->
## tags　テーブル

| Column     | Type       | Options                       |
| ---------- | ---------- | ------------------------------|
| text_tag   | string     | null:false                    |
| text_memo  | string     | null:false                    |
| user       | references | null:false, foreign_key: true |
### Association

- belongs_to :user


<!-- 案件チャット機能 -->
## projects テーブル

| Column       | Type       | Options    |
| ------------ | ---------- | ---------- |
| main_title   | string     | null:false |
| start_date   | string     | null:false |
| finish_date  | string     | null:false |
| department   | string     | null:false |
| category     | string     | null:false |
| project_memo | string     | null:false |
| image        | null       |            |
| user         | references |            |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| text_comment | text       | null:false                     |
| user         | references | null: false, foreign_key: true |
| project      | references | null: false, foreign_key: true |

### Association

- belongs_to :project
- belongs_to :user

