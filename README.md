# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| catch_copy | test       | null: false                    |
| concept    | test       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

_ belongs_to :users

## comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | string     |                                |
| user       | references | null: false, foreign_key: true |
| prototypes | references | null: false, foreign_key: true |

### Association

_ belongs_to :users
_ belongs_to :prototypes