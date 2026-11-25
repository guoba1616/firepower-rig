# 火力战车 · Firepower Rig

第一人称转管机枪战车，打 Blockade 里的方块僵尸（模型、配色、数值都沿用 Blockade）。

游戏支持中文 / English：按系统语言自动选择，主菜单右上角或设置里可以切换。

*English below.*

## 马上玩

- **网页版（电脑 / 手机都能玩）：<https://guoba1616.github.io/firepower-rig/>**
  手机打开后横过来玩，手指滑屏幕就能瞄准。
- **安卓 APK：** 到 [Releases](https://github.com/guoba1616/firepower-rig/releases/latest) 下载 `firepower-rig.apk`，安装时如果提示"未知来源"，允许安装即可。

## 关卡

- **01 街道**、**02 大桥**：都是一条长直路。坚持 5 分钟，越往后怪越多，中间有尸潮和精英怪；时间到了 Boss 出场，打死 Boss 就通关。
- 杀怪会掉发光的经验块，开车过去吸走；经验条满了就暂停，三选一强化。
- **无尽模式**：原来的小镇，一波一波打下去。

## 怎么玩

| | 手机 (APK) | 电脑 (网页) |
|---|---|---|
| 转动视角 / 瞄准 | **滑动屏幕**（自带轻度瞄准辅助）；设置里可以改开陀螺仪 | 鼠标 |
| 开车移动 | 左下摇杆 | WASD / 方向键 |
| 开火 | 右下按钮（按住；按住时滑动也能转视角） | 鼠标左键（按住） |
| 暂停 | 右上 ❚❚ | Esc |
| 校准 | 开了陀螺仪才会出现：右上 ⊙（把视角拉回水平） | — |

- 每一波清完后，三选一强化（伤害、射速、多联枪管、贯穿、爆裂弹、撞角……）。
- 转管机枪连续开火会过热（准星下方的格子、开火键外圈），松开扳机后才开始散热。
- 瞄准辅助：准星靠近僵尸时滑动会稍微变慢，滑屏或开火时会轻轻往僵尸身上拉一点；手不动时不会自己转。设置里可以关掉。
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

- 陀螺仪默认关闭。手机浏览器打开网页版时，陀螺仪需要 HTTPS（或 localhost）才能用；APK 内没有这个限制。
- iPhone 网页版开启陀螺仪后，会在点「开始游戏」时请求权限。
- 在电脑上测试手机界面：网址后面加 `?touch`。

---

## English

A first-person minigun rig vs. blocky zombies (zombie models, colors and stats from Blockade). The game is in English or Chinese: it follows your system language, and you can switch it from the top-right of the main menu or in Settings.

- **Play in the browser (PC or phone):** <https://guoba1616.github.io/firepower-rig/> (on a phone, turn it sideways)
- **Android APK:** download `firepower-rig.apk` from [Releases](https://github.com/guoba1616/firepower-rig/releases/latest) and allow installs from unknown sources if asked.

| | Phone | PC |
|---|---|---|
| Aim | Swipe the screen (light aim assist; gyro aiming is optional in Settings) | Mouse |
| Drive | Bottom-left stick | WASD / arrow keys |
| Fire | Bottom-right button (hold) | Left mouse button (hold) |
| Pause | ❚❚ top right | Esc |

- Levels **01 Street** and **02 Bridge** are long straight roads: survive 5 minutes of growing hordes, then kill the boss to clear the level. Kills drop XP gems; fill the bar to pick one of three upgrades.
- **Endless** mode is the original town: after each wave, pick one of three upgrades.
- The minigun overheats if you hold fire too long; it only cools while you're not firing.
- Ramming zombies hurts them too. Every 5th wave brings the Butcher boss: get out of the red lane when it charges.

