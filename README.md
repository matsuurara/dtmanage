# User

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| birthday           | date   | null: false               |

## Association

has_many :project, through: :project_member

# Project

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| overview | text   | null: false |

## Association

has_many :user, through: :project_member

# ProjectMember

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| project | references | null: false, foreign_key: true |

## Association

belongs_to :user <br>
belongs_to :project
