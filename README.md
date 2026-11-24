# 火力战车 · Firepower Rig

第一人称转管机枪战车，打 Blockade 里的方块僵尸（模型、配色、数值都沿用 Blockade）。

## 马上玩

- **网页版（电脑 / 手机都能玩）：<https://guoba1616.github.io/firepower-rig/>**
  手机打开后横过来玩，转动手机就能瞄准。
- **安卓 APK：** 到 [Releases](https://github.com/guoba1616/firepower-rig/releases/latest) 下载 `firepower-rig.apk`，安装时如果提示"未知来源"，允许安装即可。

## 怎么玩

| | 手机 (APK) | 电脑 (网页) |
|---|---|---|
| 转动视角 / 瞄准 | **转动手机**（陀螺仪）；也可以在屏幕空白处滑动微调 | 鼠标 |
| 开车移动 | 左下摇杆 | WASD / 方向键 |
| 开火 | 右下按钮（按住；按住时滑动也能转视角） | 鼠标左键（按住） |
| 暂停 | 右上 ❚❚ | Esc |
| 校准 | 右上 ⊙ 校准（把视角拉回水平） | — |

- 每一波清完后，三选一强化（伤害、射速、多联枪管、贯穿、爆裂弹、撞角……）。
- 转管机枪连续开火会过热，松开扳机后才开始散热。
- 开车直接撞僵尸也能造成伤害；撞强化僵尸 / Boss 会被弹回，还会掉血（升级「钢铁撞角」后就不会了）。
- 敌人：普通、奔跑、自爆（远距离打掉）、强化、吐酸（躲开地上的绿圈）。每 5 波出一次 Boss「屠夫」，看到地上的红色通道就赶快让开。

## 文件

- `docs/index.html` + `docs/three.min.js`：整个游戏（单文件，Three.js r128）。**电脑版直接双击 `docs/index.html` 用浏览器打开即可。**
- `android/`：Capacitor 6 生成的 Android 工程（已锁定横屏、全屏沉浸、屏幕常亮、自定义图标）。
- `火力战车.apk`：本地打包出来的安装包（不放进仓库，发布在 Releases 里）。

## 修改后重新打包 APK

改完 `docs/index.html` 后运行（会自动覆盖根目录的 `火力战车.apk`）：

```powershell
powershell -ExecutionPolicy Bypass -File .\build-apk.ps1
```

需要：Node、JDK 17、Android SDK（`android\local.properties` 里的 `sdk.dir`）。

## 注意

- 手机浏览器打开网页版时，陀螺仪需要 HTTPS（或 localhost）才能用；APK 内没有这个限制。
- iPhone 网页版会在点「开始游戏」时请求陀螺仪权限。
