
## 📱 Flutter Login Demo App
![CI/CD](https://github.com/setyokun/login_demo/actions/workflows/build-upload-apk.yml/badge.svg)

### 📝 Deskripsi

Aplikasi demo login sederhana menggunakan Flutter. Aplikasi ini digunakan sebagai target untuk automation testing menggunakan Appium + Robot Framework di BrowserStack.

---

### 🛠️ Fitur

* Halaman login dengan validasi sederhana
* Integrasi dengan automation pipeline
* Dibangun menggunakan Flutter 3.29.3

---

### 🚀 Cara Menjalankan Lokal

```bash
flutter pub get
flutter run
```


---

## 🧪 Build APK (Release)

```bash
flutter build apk --release
```

Output APK akan tersedia di:

```
build/app/outputs/flutter-apk/app-release.apk
```

---



## 🔗 CI/CD Workflow

* Setiap push ke `master` akan:

  * Build APK
  * Upload ke BrowserStack
  * Ambil `app_url` dari APK terbaru
  * Trigger repository automation test

---

## 🔒 Secrets GitHub Actions

| Key                       | Keterangan                                                     |
| ------------------------- | -------------------------------------------------------------- |
| `BROWSERSTACK_USERNAME`   | Username akun BrowserStack                                     |
| `BROWSERSTACK_ACCESS_KEY` | Access key akun BrowserStack                                   |
| `PERSONAL_ACCESS_TOKEN`   | GitHub PAT untuk trigger repo automation (wajib scope: `repo`) |

---

## 📦 Dependencies (`pubspec.yaml`)

Pastikan setelah clone kamu jalankan:

```bash
flutter pub get
```

Dependencies default:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
```

---

## 🧰 Tools yang Digunakan

* Flutter 3.29.3
* GitHub Actions
* BrowserStack App Automate
* Appium Inspector

---

## 🧪 Automation Testing

Untuk pengujian otomatis, gunakan [repo automation ini](https://github.com/setyokun/learn-appium-robotframework). Workflow akan secara otomatis dijalankan setelah APK berhasil di-*upload*.

---

## 🖼️ Screenshots

![Login Screen](https://i.imgur.com/1yU6or9.png)

---
