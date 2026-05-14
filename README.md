# どこいったっけ？
<img width="736" height="642" alt="スクリーンショット 2026-05-14 122219" src="https://github.com/user-attachments/assets/3df2b6f6-bd8f-40e7-9d37-dc0147e01590" />

## アプリの概要
「どこに行ったか一目でわかる、あなただけの旅行地図」
訪れた場所の住所を入力するだけで、Google Maps上に思い出をマッピングできる旅行記録管理アプリです。
訪れた日付やコメントも記録します。

## アプリのURL
https://trip-app-doko-itta.onrender.com

## 使い方
<img width="1909" height="876" alt="Animation" src="https://github.com/user-attachments/assets/bb60c281-4043-4560-ae89-fd4506ae8612" />

1. ゲストログインまたは新規登録してログイン
2. 「新しい記録を投稿」から旅行記録を追加
3. 住所を入力するとGoogle Mapsで地図が自動表示
4. キーワード検索・お気に入りで記録を絞り込み

## 機能一覧
- ユーザー登録・ログイン・ゲストログイン
- 旅行記録のCRUD（投稿・一覧・詳細・編集・削除）
- 写真アップロード
- Google Maps連携（住所→地図自動表示）
- キーワード検索
- お気に入り機能
- 自分の投稿フィルター

## 使用技術
- Ruby 3.3.6
- Ruby on Rails 8.1.3
- PostgreSQL
- Bootstrap 5
- Google Maps API
- Geocoder
- Active Storage（Cloudinary)
- Render（デプロイ）

## 工夫したところ
- 住所を入力するだけでGoogle Mapsに自動ピン表示
- ゲストログイン機能で採用担当様がすぐ試せる設計

## 今後の展望
- 複数枚写真投稿: 1つの思い出に対して、より多くの写真をアップロード可能にする。
- 旅ルートの可視化: 複数のピンを線で結び、旅行の行程を視覚化する。
- SNSシェア機能: 自分の作った旅マップをURLで友人に共有できるようにする。

## ER図
![ER図](https://raw.githubusercontent.com/kns3-3/trip-app-doko-itta/main/app/assets/images/er_diagram.png)

