# Control_DCmotor_RaspberryPi
---
# 概要
##  モーターを制御するデバイスドライバです  
---
## 使用するもの
- [Raspberry Pi 3 ModelB+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/)
- Raspberry pi用電源
- ブレッドボード
- [ラズベリーパイＢ＋／Ａ＋用ブレッドボード接続キット](https://akizukidenshi.com/catalog/g/gK-08892/) 
  - ジャンパー線 オス−メス : ジャンパー線で代用できます
- ジャンパー線 オス-オス
- ケーブル付き DC Motor (130)
- 10μF 電解コンデンサ
- tb6643KQ (モータドライバ)
- 単3電池
- 8P 直列電池ボックス
---
## 回路
#### 写真
![IMG_1593](https://user-images.githubusercontent.com/53966307/103334790-1282d700-4ab6-11eb-93f8-5c4911ae5642.jpg)
#### [TB6643KQデータシート](https://toshiba.semicon-storage.com/jp/semiconductor/product/motor-driver-ics/brushed-dc-motor-driver-ics/detail.TB6643KQ.html)
- TB6643kqのデータシートをよく読んでから使用してください
- モータに過剰な負荷をかける設置の仕方はしないでください
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
- [ミニ四駆](https://www.tamiya.com/japan/mini4wd/index.html?genre_item=goods_info,)
- モバイルバッテリー
---
## 作者の制作過程

---
## 動画

---
  
### ライセンス
[GNU General Public License v3.0](https://github.com/MibuchiYuta/Control_DCmotor_RaspberryPi/blob/master/COPYING)
