# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# 📘 データベース設計

---

## 🧑‍💻 users テーブル

| Column             | Type   | Options                  |
|--------------------|--------|--------------------------|
| name               | string | null: false              |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false              |

# user.rb
has_many :posts
---


## 📝 posts テーブル

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| user             | references | null: false, foreign_key: true |
| name             | string     | null: false                    |
| title            | string     | null: false                    |
| text             | text       | null: false                    |
| is_review_target | boolean    | default: false                 |

# post.rb
belongs_to :user
has_many :quizzes
---

## 🧠 quizzes テーブル

| Column          | Type       | Options                        |
|-----------------|------------|--------------------------------|
| post            | references | null: false, foreign_key: true |
| title           | string     | null: false                    |
| text            | text       | null: false                    |
| explanation_url | string     |                                |

# quiz.rb
belongs_to :post
has_one :quiz_schedule
---

## ⏰ quiz_schedules テーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| quiz     | references | null: false, foreign_key: true |
| send_at  | datetime   | null: false                    |
| sent     | boolean    | default: false                 |


# quiz_schedule.rb
belongs_to :quiz
---