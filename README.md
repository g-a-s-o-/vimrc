# vimrc

VimおよびVSCodeVim向けの個人設定です。

## VSCodeVim

[vscode-settings.json](./vscode-settings.json) の内容をVS CodeのUser `settings.json` にマージしてください。既存settingを消さないよう、ファイル全体の置換ではなく該当keyの追加を推奨します。

共通vimrcのremapを利用する場合は、User `settings.json` に `"vim.vimrc.enable": true` と `"vim.vimrc.path": "~/.vimrc"` も設定してください。

VSCodeVimの `.vimrc` supportは実験的で、現在はremapのみが対象です。このため検索・clipboard等のVSCodeVim固有設定はJSONへ明示しています。`Y` とCtrl-Lのremapは共通vimrcから読み込み、条件付きのInsert mode Ctrl-H／J／K／LはJSON側で定義します。Ctrl-C／V／X／ZはVS Codeへ委譲し、その他のVim Ctrl keyはVSCodeVimが処理します。
