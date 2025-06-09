# python-template
Pythonプロジェクト用のテンプレートリポジトリ

## ファイル構成

```
.
├── .github
│   └── workflows
│       ├── claude-review.yml
│       ├── ruff.yml
│       └── type-check.yml
├── src
│   ├── __init__.py
│   └── sample.py
├── tests
│   ├── __init__.py
│   └── test_sample.py
├── .gitignore
├── Dockerfile
├── Makefile
├── README.md
├── pyproject.toml
└── uv.lock
```

## ruff.yml

GitHub Actions で ruff によるコード静的解析を実行するための設定ファイル。

必要に応じて下記を変更してください。

- Pythonのバージョン (デフォルトは3.12)
- ruffのバージョン (デフォルトは0.11.13)
- GitHub Actions のトリガー (デフォルトでは Push がトリガー)

```yaml
...
on:
  push:
...
```

## ローカル環境でのテスト&lint実行方法

### テスト

- `tests` ディレクトリ内のすべてのテストを実行

```bash
pytest tests
```

- `test_sample.py` のみを実行

```bash
pytest tests/test_sample.py
```

### ruffによる静的解析

```bash
ruff check
```

### 自動フォーマット

```bash
ruff format
```


### tyによる型チェック

```bash
ty check
```
