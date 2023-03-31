## users テーブル

| Column              | Type       | Options                              |
| ------------------  | ---------- | ------------------------------       |
| nickname            | string     | null: false                          |
| name                | string     | null: false , unique: true           |
| profile             | text       | null: false                          |
| location            | string     | null: false                          |
| birthday            | date       | null: false                          |
| profile_image       | string     |                                      |
| header_image        | string     |                                      |

### Association

- has_many :tweets
- has_many :follows
- has_many :lists
- has_many :list_members
- has_many :follow_lists


## tweets テーブル

| Column             | Type       | Options                              |
| ------------------ | ---------- | ------------------------------       |
| user_id            | references | null: false                          |
| content            | string     | null: false                          |
| image              | string     |                                      |
| comment            | string     |                                      |
| tweet              | string     | null: false                          |

### Association

- belongs_to :user


## lists テーブル

| Column           | Type       | Options                              |
| ---------------- | ---------- | ------------------------------       |
| user_id          | references | null: false                          |
| name             | string     | null: false                          |
| description      | string     | null: false                          |
| private          | string     | null: false                          |

### Association
- belongs_to :user


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
- belongs_to :user


## follow_lists テーブル

| Column           | Type       | Options                              |
| ---------------- | ---------- | ------------------------------       |
| user_id          | string     | null: false                          |
| list_id          | string     | null: false                          |

### Association
- belongs_to :user


