
# コマンドを忘れたときには　Help
docker --help

# サブコマンドのHelp 
docker image --help


## 0. PCで　Docker Running状態になっている前提で実行できる　


## 1. Docker imageを作成するコマンド
### イメージをbuild(作成)するコマンド　-t　はimageにタグ名をつけている　 .ドットは今いるディレクトリのDockerfileを参照すること
### タグ名の付け方：自由な名前/イメージ名:バージョン情報
docker image build -t sample/webrick:latest .



# 2. imageの作成確認コマンド
# 今、動いているimage一覧を出す 
docker image ls


## 3. imageから　コンテナの作成

# 起動を同時に行う docker container run 
# -p : ポート指定　ローカルのポート:Dockerコンテナ内のポートを接続　WebServerなど外部からの通信がある場合、アプリごとにPortを指定。appに8000にしている。ローカル側のPortは何番でもいい。
# --name コンテナ名をつける。
# コンテナの元になるimage名を指定
docker container run -p 8000:8000 --name webrick sample/webrick:latest


# matsuiei@emMac myDockerStudy % docker container run -p 8000:8000 --name webrick sample/webrick:latest

### 実行できた。
# [2021-09-19 17:06:54] INFO  WEBrick 1.6.1
# [2021-09-19 17:06:54] INFO  ruby 2.7.4 (2021-07-07) [x86_64-linux]
# [2021-09-19 17:06:54] INFO  WEBrick::HTTPServer#start: pid=1 port=8000


# 下記にアクセスすると
http://localhost:8000/

# hello　が表示されている