## Hatego

Hatego is hatena bookmark watcher (hatena ego searcher)

```
npm install -g mizchi/hatego
```

Use it!

```
~/p/hatego (master) $ hatego -i 10 -g http://mizchi.hatenablog.com/entry/2014/05/19/013918 http://mizchi.hatenablog.com/entry/2014/05/17/070412
めっちゃヤク刈った - mizchi's blog - [1] mizchi:[]: 作業ログです
めっちゃヤク刈った - mizchi's blog - [2] Qurage:[#dev,memo]:  mizchi さんの作業ログ
めっちゃヤク刈った - mizchi's blog - [3] yosuke_furukawa:[]: わかる、俺もTypeScript型定義からjsxバインディング自動で作ろうとしてparseしてさてこっからどうしよう、、、というところで止まってる、ネスト深い。
めっちゃヤク刈った - mizchi's blog - [4] ruicc:[]: 確かに*.d.tsパースして型情報ほしい
めっちゃヤク刈った - mizchi's blog - [5] hintoku:[]: 
タッチタイピング矯正器としての無刻印キーボードが良いという話と、無刻印の辛い点 - mizchi's blog - [1] mizchi:[]: 書いた
タッチタイピング矯正器としての無刻印キーボードが良いという話と、無刻印の辛い点 - mizchi's blog - [2] netcraft:[]: HHKB無刻印には強力な矯正作用があったのですね。HHKB Proだけで満足してしまっていました。今度買ってみてタッチタイピング頑張ってみます！
...
```

`-i minute`: interval

`-g`: notify growl

`-t`: show title(if you add more than two url, it will be actiavted automatically)

## Growl options

if you use growl, install like below.

### Mac

```
gem install terminal-notifier
```

### linux

```
apt-get install libnotify-bin
```

