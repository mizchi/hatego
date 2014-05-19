## Hatego

Hatego is hatena bookmark watcher (hatena ego searcher)

## Install 

```
npm install -g mizchi/hatego
```

if you use growl, install like below.

### Mac

```
gem install terminal-notifier
```

### linux`

```
apt-get install libnotify-bin
```

## How to use

```
$ hatego --interval 5 --growl http://mizchi.hatenablog.com/entry/2014/05/20/005039
Tue May 20 2014 03:32:58 GMT+0900 (JST)
- 
  timestamp: 2014/05/20 03:15:48
  comment:   
  user:      sidebiz
  tags: 
    (empty array)
- 
  timestamp: 2014/05/20 02:58:35
  comment:   モバイル環境でDOM挿入する時innerHTMLとappendNodeどっちが速いの？という話 - mizchi's blog
  user:      hiroshi_revolution
  tags: 
    (empty array)
- 
  timestamp: 2014/05/20 01:45:36
  comment:   
  user:      kenzy_n
  tags: 
    - モバイル
    - ライブラリ
...
```

`-i minute`: interval
`-g`: notify growl
