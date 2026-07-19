# vimrc

VimおよびVSCodeVim向けの個人設定です。

## VSCodeVim

[vscode-settings.json](./vscode-settings.json) の内容をVS CodeのUser `settings.json` にマージしてください。既存settingを消さないよう、ファイル全体の置換ではなく該当keyの追加を推奨します。

VSCodeVimの `.vimrc` supportは実験的で、現在はremapのみが対象です。このため検索・clipboard等はJSONへ明示し、共通vimrcの直接読込みには依存していません。Ctrl-C／V／X／ZはVS Codeへ委譲し、その他のVim Ctrl keyはVSCodeVimが処理します。

## 課題管理

VSCodeVim対応の調査・判断内容はGitHub issueと [`.github/issue-drafts`](./.github/issue-drafts) に記録しています。

- [#3 VSCodeVim向けsettings.jsonを提供する](https://github.com/g-a-s-o-/vimrc/issues/3)
