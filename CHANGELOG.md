# Changelog

## [1.0.0] - 2025-11

### 首次发布

审计目标：Android 12 (SPRD/Unisoc ums9230, 补丁 2023-06-05)

新增漏洞记录：

- V01 FactoryReset 导出
- V02 PingActivity system UID 命令执行面
- V03 ThirdAppContentProvider 无权限
- V04 DuerGuardContentProvider 无权限
- V05 EMStartReceiver 隐藏属性写后门
- V06 AudioStationUpdateActivity phasecheck 写入（已实测）
- V07 QmmiBroadcastReceiver2 Settings/NVRAM 写入（已实测）
- V08 ValidationToolsBroadcastReceiver 工厂模式入口
- V10 ModemAssertReceiver 私有目录任意写入（已实测）
- V11 agingtest PhoneBootReceiver 拉起老化测试（已实测）
- V12 factorytest PhoneBootReceiver 拉起老化测试（已实测）
- V13 SrmiManager 导出 Binder 服务
- V14 SystemLogRequestReceiver 系统日志外泄
- V15 CommandExecutor system UID sh 执行原语

新增：
- CVE-2024-31317 适用性评估
- 分析数据（130 APK 的组件/权限清单）
- PoC 集合（shell + Java Binder 客户端）
