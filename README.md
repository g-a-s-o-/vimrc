# vimrc

VimおよびVSCodeVim向けの個人設定です。

## VSCodeVim

[vscode-settings.json](./vscode-settings.json) の内容をVS CodeのUser `settings.json` にマージしてください。既存settingを消さないよう、ファイル全体の置換ではなく該当keyの追加を推奨します。

VSCodeVimの `.vimrc` supportは実験的で、現在はremapのみが対象です。このため検索・clipboard等はJSONへ明示し、共通vimrcの直接読込みには依存していません。Ctrl-C／V／X／ZはVS Codeへ委譲し、その他のVim Ctrl keyはVSCodeVimが処理します。
