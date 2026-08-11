# Solution Concept / 方案概念

## Current direction

**Smart Home Organization Robot**：一种面向室内环境、先支持有限物品集合的机器人，目标是帮助用户找到物品，并在条件允许时把选定物品放回合适位置。

## SEE → REMEMBER → FIND → ORGANIZE

| Action | 用户能理解的含义 | 技术只作为支持 |
|---|---|---|
| **SEE** | 观察环境并识别相关物品 | Computer vision / sensing |
| **REMEMBER** | 记住物品最近在哪里 | Object-location record / indoor map |
| **FIND** | 用户需要时帮助定位和取回 | Voice interaction / navigation |
| **ORGANIZE** | 对支持的物品进行有限的物理整理 | Grasping / placement |

## Why embodied intelligence?

与只记录信息的 App 或被动摄像头相比，具身系统可以感知环境、移动并与物品发生物理交互。这里的重点是用户结果：不仅告诉用户“在哪里”，未来还可能帮助找到、带回或放回。

## MVP 工作假设

`MVP / first product` 暂定只覆盖：

- 一个有限的室内空间；
- 一组明确支持的小型日常物品；
- 物品位置记录与简单查找；
- 在安全、可行的前提下进行有限整理。

具体机器人形态、抓取能力、地图方式、交互方式和安全边界尚未确定，均属于 `Open Question` 或 `Future validation`。不要把概念演示描述成已完成的技术性能。

## 方案比较

Storage、Tracking tags、Camera、App、Smart furniture 和 Embodied robot 都应作为共创阶段的比较对象。当前选择机器人的理由是：它有机会把“记录/定位”延伸到“移动/物理整理”；这是一项设计判断，不是已经验证的市场结论。
