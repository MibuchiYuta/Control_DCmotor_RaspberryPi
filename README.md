# Control_DCmotor_RaspberryPi
---
# 概要
##  モーターを制御するデバイスドライバです  
---
## 使用するもの
- Raspberry Pi 3 ModelB+
- Raspberry pi用電源
- ブレッドボード  
- ジャンパー線 オス−メス *6  
- ケーブル付き DC Motor (130)
- 10μF 電解コンデンサ
- tb6643KQ (モータドライバ)
- 単3電池
- 8P 直列電池ボックス
---
## 回路
#### 写真のように接続してください
![IMG_1593](https://user-images.githubusercontent.com/53966307/103334790-1282d700-4ab6-11eb-93f8-5c4911ae5642.jpg)
#### TB6643KQデータシート
---
## 使用方法  
```sh
$ git clone https://github.com/MibuchiYuta/Control_DCmotor_RaspberryPi/
$ cd Control_DCmotor_RaspberryPi
$ make  
$ sudo insmod motor.ko  
$ sudo chmod 666 /dev/motor0  
```
---
## 実行
### 正回転させる  
```sh
$ echo + > /dev/motor0  
```
---
### 逆回転させる

```sh
$ echo - > /dev/motor0
```
---
### デバイスドライバのアンインストール方法
```sh
$ sudo rmmod motor
  ```   
---
# 応用
##  車のおもちゃを操作する
---
## 追加で使用するもの
- ミニ四駆
- モバイルバッテリー
---
## 作者の制作過程
---
## 動画
---
  
### ライセンス
[GNU General Public License v3.0](https://github.com/MibuchiYuta/Control_DCmotor_RaspberryPi/blob/master/COPYING)
