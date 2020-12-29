# robosys_device_drivers

---
  
# 使用方法
###  モーターを制御するデバイスドライバです  
  
---
  
## 使用するもの
  
・Raspberry Pi 3 ModelB+  
・ブレッドボード  
・ジャンパー線 オス−メス *6  
  
---
  
## 回路
  
  
---
  
## ビルド
  
実行する場合、以下のように行ってください。  
```sh
$ git clone https://github.com/mibuchiyuta/robosys_device＿driber 
$ cd robosys/device_driber
$ make  
$ sudo insmod motor.ko  
$ sudo chmod 666 /dev/motor0  
```
  
---
  
## 実行方法  
### 正回転させる  
  
```sh
$ echo 1 > /dev/motor0  
```
---

### 逆回転させる

```sh
$ echo a > /dev/motor0
```
  
---
  
## 動画  
  
---

## 応用方法
###  車のおもちゃを操作する
---

## 追加で使用するもの

- 車のおもちゃ
- モバイルバッテリー

---

## 作者の制作過程

---

## 動画

---
  
### ライセンス
[GNU General Public License v3.0](https://github.com/Dansato1203/Robosys2020_devicedriver/blob/master/COPYING)
