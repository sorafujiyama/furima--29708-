## users テーブル

|      Column      | Type    | Options     |
| ---------------- | ------  | ----------- |
| nickname         | string  | null: false |
| email            | string  | null: false |
| password         | string  | null: false |
| family_name      | string  | null: false |
| fist_name        | string  | null: false |
| family_name_kana | string  | null: false |
| fist_name_kana   | string  | null: false |
| birthday         | integer | null: false |

### Association

- has_many : items
- has_one : buys


## items テーブル

|      Column     | Type   | Options     |
| --------------- | ------ | ----------- |
| listing_image   | string | null: false |
| product_name    | text   | null: false |
| decription      | text   | null: false |
| category        | string | null: false |
| status          | string | null: false |
| shopping_cost   | string | null: false |
| shopping_area   | string | null: false |
| shopping_days   | string | null: false |
| price           | integer | null: false |
| user_id         | references | null: false,foreign_key: true|

### Association

- belongs_to : user
- has_one : shopping_address


## buys テーブル

|         Column           | Type   | Options     |
| -------------------------| ------ | ----------- |
| card_information         | integer | null: false |
| expiration_date          | integer | null: false |
| security_code            | integer | null: false |
| user_id                  | references | null: false, foreign_key: true|

### Association

- has_one : shopping_address


## shopping_address テーブル

|      Column     | Type   | Options     |
| --------------- | ------ | ----------- |
| postal_code     | integer | null: false |
| prefectures     | string | null: false |
| municipalities  | string | null: false |
| address         | string | null: false |
| building        | string | null: true |
| tel             | integer | null: false |
| item_id         | references | null: false, foreign_key: true|
| buy_id          | references | null: false, foreign_key: true|

### Association

- belongs_to : item
- belongs_to : buy