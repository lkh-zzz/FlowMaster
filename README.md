# FlowMaster - 网络流量控制脚本

## 简介

FlowMaster 是一款功能强大且灵活的流量控制脚本，专为 Linux 系统设计。它使您能够通过在指定的网络接口上应用上传和下载速度限制来有效管理带宽和网络资源。脚本支持对特定 IP 地址的精细流量管理，确保关键任务应用程序的最优性能，并在共享网络中公平分配带宽。

## 功能

- **带宽整形**：在选定的网络接口上限制上传和下载速度。
- **目标流量控制**：对特定 IP 地址应用规则以实现精确控制。
- **启动、停止和监控**：命令用于初始化、终止和检查流量控制设置。

## 安装方法

```bash
git clone ..
```

## 使用方法

### 基本命令

- `start`：在指定的接口上开始流量控制。
- `restart`：重启流量控制设置。
- `stop`：停止所有流量控制操作。
- `status`：显示当前的流量控制设置。
- `mangle`：查看当前的 iptables 设置。

### 选项

| 选项 | 描述 |
| --- | --- |
| `-d DSPEED` | 设置下载速度限制（单位为 kbit）。
| `-U USPEED` | 设置上传速度限制（单位为 kbit）。
| `-e INTERFACE` | 指定网络接口。
| `-i IP` | 指定要严格过滤的 IP 地址。 |

### 示例

#### 启动 FlowMaster

```bash
./flowmaster.sh -d 1000 -U 500 -e eth0 -i 192.168.1.100 start
```

#### 重启 FlowMaster

```bash
./flowmaster.sh -d 1000 -U 500 -e eth0 -i 192.168.1.100 restart
```

#### 停止 FlowMaster

```bash
./flowmaster.sh -e eth0 stop
```

#### 查看状态

```bash
./flowmaster.sh -e eth0 status
```

#### 查看 Iptables 设置

```bash
./flowmaster.sh -e eth0 mangle
```

## 许可证

FlowMaster 在 GNU 通用公共许可证 v3.0 下发布。这确保了软件可以自由地重新分发和修改，促进了开源合作与创新。

## 贡献

欢迎对 FlowMaster 进行贡献！如果您遇到错误，有改进的想法，或想要添加新功能，请在我们的 [GitHub 仓库](https://github.com/yourusername/flowmaster) 上打开问题或提交拉取请求。

## 联系我们

对于进一步的询问或支持，请联系 bbxwg <18530490625@163.com>。

## 免责声明

此程序是希望它能有所帮助而发布的，但不附有任何保证；甚至没有隐含的保证，包括适销性或适合于某一特定目的的保证。详情请参阅 GNU 通用公共许可证。

请注意，实际脚本的功能和行为受限于底层 Linux 流量控制 (tc) 子系统和 iptables 的限制和能力。在修改网络设置前，请确保您具有必要的权限和网络管理知识。
