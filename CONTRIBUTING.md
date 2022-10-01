# Contribution Guide

本リポジトリへの貢献ガイドです。

## Pull Requests (Git Flow ベース)

- PR の内容には本リポジトリの[ライセンス](/LICENSE)が適用されます
- 作業中の場合は [Draft Pull Request](https://github.blog/jp/2019-02-19-introducing-draft-pull-requests/) を使用してください

### 通常 (`develop` <- `feature/*`)

- ブランチ名はできるだけ `feature/` を始めにつけてください
- PR の変更はできるだけシンプルにしてください
- レビューに通ることで、`develop` ブランチにマージされます

### バージョンアップ (`main` <- `develop`)

- バージョンアップは TRENDcreate メンバーが行います
- `release/v{バージョン上２桁}` のブランチを切り、バージョンアップの準備をします
- 準備は `/README.md` の Contributors や nimble の `version` の更新などをします
- 準備ができたら `main` ブランチへの PR を建てます
- レビューを受けマージが完了したら、すみやかに `develop` ブランチへの PR を建てます

### 緊急修正 (`main` <- `hotfix/*`)

- 緊急修正は TRENDcreate メンバーが行います
- ブランチ名は `hotfix/` から始めます
- 緊急修正が完了したら、バージョンアップの準備をします
- レビューを受けマージが完了したら、すみやかに `develop` ブランチへの PR を建てます

## [Conventional Commits](https://www.conventionalcommits.org/ja/v1.0.0/)

- コミットメッセージはできるだけ Conventional Commits のルールに従ってください
- コミットの型は以下のリストにあるものをつかってください

### コミットの型一覧

```
feat: 新機能
fix: バグ修正
docs: ドキュメントのみの変更
style: フォーマットの変更 (コードの動作に影響しないスペース、フォーマット、セミコロンなど)
refactor: リファクタリングのための変更 (機能追加やバグ修正を含まない)
perf: パフォーマンスの改善のための変更
test: 不足テストの追加や既存テストの修正
build: ビルドシステムや外部依存に関する変更 (nimble 等)
ci: CI 用の設定やスクリプトに関する変更 (GitHub Actions 等)
chore: その他の変更 (ソースやテストの変更を含まない)
revert: revert コミット
```

参考: [cz-conventional-changelog-ja](https://github.com/tyankatsu0105/cz-conventional-changelog-ja/blob/master/commit-types.json)

## Versioning ([セマンティック バージョニング](https://semver.org/lang/ja/) 2.0.0 ベース)

- バージョンナンバーは、`{メジャー}.{マイナー}.{パッチ}` とし、バージョンを上げるには、

1. 変更に互換性のない場合はメジャーバージョンを、
2. 後方互換性のある通常アップデートをした場合はマイナーバージョンを、
3. 緊急修正をした場合はパッチバージョンを上げます

- バージョンアップをした際に、TRENDcreate メンバーがそのマージコミットに `v{バージョンナンバー}` のタグをつけます
