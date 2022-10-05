# CarthageSpecs
* GitHubに生のframeworkを設置する際に容量制限がかかるものをこのリポジトリでzip化して管理する

# 構成
## ディレクトリ構成
* [Xcodeバージョン]/[ライブラリ名]/[バージョン]/
  * (例) `12.5.1/Realm/10.10.0/`

## ファイル構成
* [Xcodeバージョン]/[ライブラリ名]/[ライブラリ名].json
  * (例) `12.5.1/Realm/Realm.json`
  * Carthageでbinaryインストールする際に必要となるパッケージ情報（[※参考](https://github.com/bookscaninc/CarthageSpecs/blob/main/12.5.1/Realm/Realm.json))
* [Xcodeバージョン]/[ライブラリ名]/[バージョン]/[ライブラリ名].framework.zip
  * (例) `12.5.1/Realm/10.10.0/Realm.framework.zip`
  * ライブラリのバージョンディレクトリに下にzip化したframeworkを設置する

# アップデート方法
## This Respository
1. ローカル環境でCarthageを使用してライブラリをビルドしてframeworkを作成する
2. frameworkをzip化する
3. [ライブラリ名].jsonを新規作成 or バージョン情報を追記する
4. リポジトリ(mainブランチ)にコミットして完了

```sh
$ carthage update --platform iOS --no-use-binaries --use-xcframeworks
```

## 利用するアプリ
1. Cartfileでバージョン指定をしてbinaryインストール
```
binary "https://raw.githubusercontent.com/bookscaninc/CarthageSpecs/10.10.0/Realm/Realm.json" == 10.10.0
```
