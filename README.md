## Poetry による仮想環境の作成

```
poetry add <library name>

poetry remove <library name>

poetry install
```

- [Poetry document](https://cocoatomo.github.io/poetry-ja/cli/)

## venv による仮想環境の作成

```
# 仮想環境の作成
python3 -m venv .venv

# 仮想環境のアクティベート
source .venv/bin/activate

# pip のアップグレード
python3 -m pip install --upgrade pip

# pip tools のインストール
pip install pip-tools

# requirements.in を更新

# 実行時の最新バージョン番号を指定した requirements.txt の生成
pip-compile requirements.in

# ライブラリのインストール
pip install -r requirements.txt
```

## Docker

```sh
# コンテナの起動
docker-compose up -d --build

# コンテナの停止
docker-compose down

# コンテナに入る
docker compose exec poetrytest bash

# コンテナから出る
exit
```
