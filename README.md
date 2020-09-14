## users テーブル

|      Column      | Type    | Options     |
| ---------------- | ------  | ----------- |
| nickname         | string  | null: false |
| email            | string  | null: false |
| encrypted_password | string  | null: false |
| family_name      | string  | null: false |
| fist_name        | string  | null: false |
| family_name_kana | string  | null: false |
| fist_name_kana   | string  | null: false |
| birthday         | date    | null: false |

### Association

- has_many : items
- has_many : orders



## items テーブル

|      Column     | Type   | Options     |
| --------------- | ------ | ----------- |
| product_name    | string | null: false |
| decription      | text   | null: false |
| category        | string | null: false |
| status          | integer | null: false |
| shopping_cost   | integer | null: false |
| shopping_area   | integer | null: false |
| shopping_days   | integer | null: false |
| price           | integer | null: false |
| user         | references | null: false,foreign_key: true|

### Association

- belongs_to : user
- has_many :orders



## buys テーブル

|         Column           | Type   | Options     |
| -------------------------| ------ | ----------- |
| card_information         | integer | null: false |
| expiration_date          | integer | null: false |
| security_code            | integer | null: false |
| postal_code     | string | null: false |
| prefectures     | integer | null: false |
| municipalities  | string | null: false |
| address         | string | null: false |
| building        | string |             |
| tel             | string | null: false |
| order          | references | null: false, foreign_key: true|

### Association

- belongs_to : order


## orders テーブル

|         Column           | Type   | Options     |
| -------------------------| ------ | ----------- |
| user          | references | null: false, foreign_key: true|
| item          | references | null: false, foreign_key: true|

### Association

- belongs_to : user
- belongs_to : item
- has_on : buys