Podman で　 Rails 7 を構築する方法

DB は sqlite になっています。

その前にブラウザのキャッシュを削除しておいてください。
Localhost で HTTPS 接続すると次から HTTP 接続時にリクエストの不一致でエラーとなるのでキャッシュの事前削除をお願いします。

MacOS (intel)にて
初めに Podman Desktop or Podman をインストールしておいてください。

```

chmod +x podman-build.sh
chmod +x podman-run.sh

```

ファイルに実行権限を与え`podman-build.sh`を実行する

```
./podman-build.sh
```

次に

```
./podman-run.sh
```

`localhost:3000`でブラウザからアクセスすると Rails の初期画面が表示されるはずです。

エラーとなった場合は、念の為ブラウザの全期間の Cookie とキャッシュを削除してください。
