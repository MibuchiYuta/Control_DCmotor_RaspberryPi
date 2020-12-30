# Control_DCmotor_RaspberryPi
---
# 概要
##  モーターを制御するデバイスドライバです  
---
## 動作確認済み環境
- Raspberry pi 3b+
- ubuntu server 20.04 LTS
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
![回路写真](https://user-images.githubusercontent.com/53966307/103334790-1282d700-4ab6-11eb-93f8-5c4911ae5642.jpg)
1. TB6643KQの1番ピンとGPIO24を繋ぐ
2. TB6643KQの2番ピンとGPIO25を繋ぐ
3. TB6643KQの4番ピンとGPIO GNDを繋ぐ
4. TB6643KQの3,5番ピンとモータの端子２つを繋ぐ
5. 3 で繋いだGNDと電池ボックスの-端子を繋ぐ
6. 電池ボックスの+端子と-端子の間に電解コンデンサを繋ぐ
7. TB6643KQの7番ピンと電池ボックスの+端子を繋ぐ
8. 電源ボックスに電池を入れる

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
<img src="https://user-images.githubusercontent.com/53966307/103336114-75766d00-4aba-11eb-90ab-a480ed0d2c67.jpg" width="320px"> <img src="https://user-images.githubusercontent.com/53966307/103336131-7e673e80-4aba-11eb-8638-995965d89c9e.jpg" width="320px">
<img src="https://user-images.githubusercontent.com/53966307/103336216-b9697200-4aba-11eb-84f5-46e3c0fc3d89.jpg" width="320px"> <img src="https://user-images.githubusercontent.com/53966307/103336209-afe00a00-4aba-11eb-8559-bb4fa8082f96.jpg" width="320px">
<img src="https://user-images.githubusercontent.com/53966307/103336176-9b037680-4aba-11eb-9be1-219d73907503.jpg" width="320px">

---

## 実行
### 少し前に進む  
```sh
$ echo f > /dev/motor0  
```
---
### 少し後ろに戻る  
```sh
$ echo r > /dev/motor0  
```
---
### 大きく前に進む  
```sh
$ echo F > /dev/motor0  
```
---
## 実行
### 大きく後ろに戻る  
```sh
$ echo R > /dev/motor0  
```
---
## 動画

---
  
### ライセンス
[GNU General Public License v3.0](https://github.com/MibuchiYuta/Control_DCmotor_RaspberryPi/blob/master/COPYING)
