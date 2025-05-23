# 困兽之战
简体中文 | [English](./README_en.md) | [日本語](./README_jp.md) 

![版本](https://img.shields.io/badge/版本-4.0.0-brightgreen)
![Minecraft版本](https://img.shields.io/badge/Minecraft-Java版-orange)
[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/lanzeweie/Minecraft-KunShouZhiZhan)

《困兽之战》是一个Minecraft数据包，实现了经典的大逃杀玩法。在逐渐缩小的世界边界内，玩家需要搜集资源、相互对抗，最终存活到最后的玩家将获得胜利。

## 游戏介绍

玩家将在一个广阔的区域内随机分散，随着时间的推移，世界边界会不断缩小，迫使玩家相互靠近。在游戏过程中，玩家需要：
- 收集资源和装备
- 寻找空投获得高级物品
- 在缩小的边界内生存
- 与其他玩家战斗
- 成为最后的幸存者

## 游戏模式

游戏提供多种时长的对局供选择：

- **快速对局**：15分钟，适合快节奏游戏
- **均速对局**：30分钟，平衡的游戏体验
- **持久对局**：45分钟，充分的探索和发展时间
- **史诗对局**：60分钟，长时间的战略对抗
- **马拉松**：90分钟，极限耐力挑战

可设置空投时间 

## 游戏机制

### 游戏流程

1. 管理员使用启动棒开始游戏
2. 选择游戏模式
3. 游戏开始倒计时
4. 玩家被随机传送到地图各处
5. 世界边界开始缩小
6. 空投定期降落，提供高级物品
7. 赛圈不断缩小，经历多个阶段
8. 最终进入死亡之终阶段，极小范围内的最终决战
9. 最后幸存者获胜

### 空投系统

空投会根据游戏时长定期投放，包含珍贵物品。空投由发光的矿车箱子标识，玩家需留意空中下落的空投。

空投自定义
可以在数据包里面修改 data/hanhankszz/functions/loot_tables/drop.json
### 赛圈阶段

游戏分为多个赛圈阶段：
1. 第一赛圈：初始探索阶段
2. 第一赛圈整顿：短暂停滞期
3. 第二赛圈：加速缩圈
4. 第二赛圈整顿：再次停滞
5. 最终赛圈：范围很小
6. 最后决战：最终决战圈

### 安装

1. 下载数据包
2. 开始游戏的时候添加数据包
注意: 仅极限模式地图

蓝奏云
https://wwpp.lanzoum.com/b0fphf7ni
密码:2axp

## 贡献与反馈

欢迎通过以下方式提供反馈或贡献：
- GitHub: [https://github.com/lanzeweie/Minecraft-KunShouZhiZhan](https://github.com/lanzeweie/Minecraft-KunShouZhiZhan)
- 邮箱: lanzeweie@foxmail.com
- 小黑盒ID: 13475401

## 许可
[MIT许可证](./LICENSE)，转载请注明出处。