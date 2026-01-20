# switch_controller

A Flutter-based application to control or simulate Nintendo Switch controllers.

##概要

このプロジェクトは、Flutter で構築された Nintendo Switch 用のコントローラーアプリです。
Bluetooth 通信やネットワーク経由で、デバイスをコントローラーとして動作させることを目的としています（あるいは、特定のデバイスを操作するためのインターフェースを提供します）。

## 特徴

- **Low Latency**: Flutter のパフォーマンスを活かした低遅延な入力。
- **Custom UI**: 使いやすさを追求した直感的なコントローラーレイアウト。
- **Cross Platform**: Android / iOS の両方で動作（※ハードウェア制限によりプラットフォームごとに挙動が異なる場合があります）。

## スクリーンショット

| Main Screen | Settings |
| :---: | :---: |
| <img src="https://via.placeholder.com/200" width="200"> | <img src="https://via.placeholder.com/200" width="200"> |

## セットアップ

### 動作要件

- Flutter SDK: `^3.0.0` 以上
- Dart SDK: `^3.0.0` 以上
- 各プラットフォームの Bluetooth 権限（必要に応じて）

### インストール

1. リポジトリをクローンします。
   