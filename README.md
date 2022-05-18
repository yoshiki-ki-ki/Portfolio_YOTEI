# YOTEI　簡単！予定調整ツール

## サイト概要
なかなか決まらない友人との予定の調整を手助けできるアプリケーション。

### サイトテーマ
とりあえず日程だけでも決める。

### テーマを選んだ理由
友人と遊ぶ予定を立てるときになかなか互いの予定が合わずに1週間も1か月もだらだらと
予定を合わせるためのやり取りをして、結局遊ぶ予定自体が流れてしまうことがありました。
そんな面倒なやり取りを減らし、簡単に予定を合わせるためのアプリケーションがほしいと思い
このテーマを選びました。

### ターゲットユーザ
飲み会や友人と出かける予定がなかなか決まらない。
とりあえず日程だけでも早く決めたいと考えている人。

### 主な利用シーン
複数人の友達と遊ぶ予定を立てるときや、飲み会の日程を決めるときなど。
とりあえず日程を決めようというときに活用できます。
スマホで簡単に操作できるよなレイアウトになっているため、手軽に利用してください。

### 使い方
主催者側はまずアカウントを作成してください。
その後「日程を決める」から予定についての情報と候補日を複数記入して
イベントを作成してください。
イベントを作成するとQRコードとURLが生成されているので、参加者の方々に共有してください。

参加者の方々は共有されたQRコードかURLから主催者が作成した
イベント候補日の参加可否を入力してください。

最後に主催者は参加者からの回答を集計して候補日の中から
イベントの予定日時を決定すれば完了です。

### アプリケーションURL
<http://yotei-kantan.com/><br>

## 設計書
ER図  
<https://drive.google.com/file/d/1AfgD_DQd4GYQMbl9yPPL-KP16j0WtPYJ/view?usp=sharing><br>
テーブル定義書<br>
<https://docs.google.com/spreadsheets/d/1i1L4EtRGhVZQy5NObJrPF6clt5i-ckBgA0lYa8cpJM8/edit?usp=sharing><br>
アプリケーション詳細設計<br>
<https://docs.google.com/spreadsheets/d/1S4jwY9Yn2U4W5Cn4S1CO_3yet9MkNUpGLVCNg6Scirc/edit?usp=sharing><br>
ワイヤーフレーム<br>
<https://www.figma.com/file/ErqGTNiJVCmk1fZ5hppEKA/YOTEI?node-id=0%3A1> <br>

## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1FLn_urQlKlg5Br5D8-m0SFQfIx1MvrkxIt-IDHcAryA/edit?usp=sharing>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用gem
認証機能<br>
- devise
- devise-i18n
- devise-i18n-views
フォームの追加削除機能<br>
- cocoon
ページネーション機能<br>
- kaminari
QRコード作成機能<br>
- rqrcode
- chunky_png

## ドメイン取得
お名前.com<br>
https://www.onamae.com/
