# Settings.Global.* 写入点（由 `_work/sinks.py` 生成，勿手改）

## 全部调用

| 文件 | 行 | 解析方式 | 键名 |
|---|---|---|---|
| `CommonInfoData.java` | 166 | literal | `isRestart` |
| `CommonInfoData.java` | 169 | literal | `duer_statistic_shutdown_reason` |
| `GcfTestImpl.java` | 23 | field-const | `message_send_retries` |
| `GcfTestImpl.java` | 28 | field-const | `message_send_retries` |
| `UsbDebugImpl.java` | 17 | literal | `development_settings_enabled` |
| `UsbDebugImpl.java` | 18 | literal | `adb_enabled` |
| `UsbDebugImpl.java` | 23 | literal | `adb_enabled` |
| `UsbDebugImpl.java` | 24 | literal | `development_settings_enabled` |
| `AppSettingsPrefActivity.java` | 59 | field-const | `custom_user_agent_string` |
| `AppSettingsPrefActivity.java` | 64 | field-const | `user_agent_choice` |
| `AppSettingsPrefActivity.java` | 68 | field-const | `other_user_agent_string` |
| `DmSwitchImpl.java` | 21 | field-const | `dm_switch` |
| `NetModeSelectActivity.java` | 185 | expr | `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)` |
| `NetModeSelectActivity.java` | 200 | expr | `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)` |
| `NetModeSelectActivity.java` | 215 | expr | `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)` |
| `NetModeSelectActivity.java` | 230 | expr | `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)` |
| `NetModeSelectActivity.java` | 245 | expr | `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)` |
| `NetModeSelectActivity.java` | 260 | expr | `getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)` |
| `UsbActiveImpl.java` | 17 | field-const | `switch_for_usb_active` |

## 变量键候选

- `NetModeSelectActivity.java:185` raw=`getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`

```java
Settings.Global.putInt(getContentResolver(), getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId), 3); t
```

- `NetModeSelectActivity.java:200` raw=`getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`

```java
Settings.Global.putInt(getContentResolver(), getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId), 1); t
```

- `NetModeSelectActivity.java:215` raw=`getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`

```java
Settings.Global.putInt(getContentResolver(), getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId), 2); t
```

- `NetModeSelectActivity.java:230` raw=`getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`

```java
Settings.Global.putInt(getContentResolver(), getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId), 0); t
```

- `NetModeSelectActivity.java:245` raw=`getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`

```java
Settings.Global.putInt(getContentResolver(), getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId), 2); t
```

- `NetModeSelectActivity.java:260` raw=`getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId)`

```java
Settings.Global.putInt(getContentResolver(), getSetting(SettingsProxy.Global.PREFERRED_NETWORK_MODE, subId), 0); t
```

