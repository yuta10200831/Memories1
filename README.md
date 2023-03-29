## users テーブル

| Column              | Type       | Options                              |
| ------------------  | ---------- | ------------------------------       |
| nickname            | string     | null: false                          |
| name                | string     | null: false , unique: true           |
| profile             | text       | null: false                          |
| location            | string     | null: false                          |
| birthday            | date       | null: false                          |
| profile_image       | string     | null: false                          |
| header_image        | string     | null: false                          |

### Association

- has_many :items
- has_many :cards


## tweets テーブル

| Column             | Type       | Options                              |
| ------------------ | ---------- | ------------------------------       |
| user_id            | references | null: false                          |
| content            | text       | null: false                          |
| image              | string     | null: false                          |
| comment            | string     | null: false                          |
| tweet              | integer    | null: false                          |

### Association

- belongs_to :user
- has_one :card


## lists テーブル

| Column           | Type       | Options                              |
| ---------------- | ---------- | ------------------------------       |
| user_id          | references | null: false                          |
| name             | string     | null: false                          |
| description      | string     | null: false                          |
| private          | string     | null: false                          |

### Association
- belongs_to :card


## list_members テーブル

| Column           | Type       | Options                              |
| ----------       | ---------- | ------------------------------       |
| user_id          | references | null: false                          |
| list_id          | references | null: false                          |

### Association
- belongs_to :card


## follows テーブル

| Column           | Type       | Options                              |
| ---------------- | ---------- | ------------------------------       |
| follower_id      | string     | null: false                          |
| followee_id      | integer    | null: false                          |

### Association
- belongs_to :card


## follow_lists テーブル

| Column           | Type       | Options                              |
| ---------------- | ---------- | ------------------------------       |
| user_id          | string     | null: false                          |
| list_id          | string     | null: false                          |

### Association
- belongs_to :card


## retweets テーブル

| Column           | Type       | Options                              |
| ---------------- | ---------- | ------------------------------       |
| user_id          | references | null: false                          |
| tweet_id         | references | null: false                          |

### Association
- belongs_to :card