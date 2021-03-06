# Rubyのイメージを指定
FROM ruby:2.7 



# コマンド実行
# 1. 実行環境のディレクトリを定義
RUN mkdir /var/www

# 2. Docker内の実行環境ディレクトリへコードを配置
COPY main.rb /var/www


# 3. コマンドでイメージを起動した後にアプリケーションコードを実行　リストにコマンドを羅列する
CMD ["ruby", "/var/www/main.rb"]


# ベースイメージ　　　　OSを定義
# ライブラリ　　　　　　アプリケーションコードに必要なライブラリを追加
# アプリケーションコード　コードの配置を定義
# 以上をすべてまとめてイメージにする


