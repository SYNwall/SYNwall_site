---
layout: default
---
<br>
![Logo](/assets/images/SYNwall-Logo_transp.png){: .center-image }

<br>
<br>

# **SYNwall:** A different way to think firewalling

**SYNwall** brings to you a total new way to approach firewalling: you don't have to worry anymore about rules, IP, ports, etc.
A simple PSK will allow a low-maintenance firewall-like security.
Built with **IoT** in mind, it can be used also in different environments.

# Main Features

*  zero (prior) knowledge of who is accessing required
*  zero maintenance required (once deployed) (no firewall configs or iptables maintenance)
*  protect in case of unpatched/unknown/0days remote exploitable vulns
*  low HW profile and multiplatform (Intel, ARM, AARCH64, MIPS)
*  works on different kernels (5.x, 4.x, 3.x)
*  works transparently with existing protocols (SSH, HTTP, MQTT) 
*  works with **TCP** and **UDP**
*  may help in be compliant with Industry Sec Standard
*  SOCKS server provided to manage centralized access with the SYN Payload management
*  **Ansible** script for automatic deployment
*  fully Open Source solution

# How **SYNwall** works

The concept is straightforward: the **SYNwall** will inject, in a completely transparent way, a token in the first network packet (TCP or UDP).
   
If the receiving device can validate the token, the connection will be allowed, otherwise it will be dropped.

Here a quick demo:

<div class="iframe-container">
  <iframe src="/assets/videos/SYNwall_site_demo.webm"> </iframe>
</div>

# How you can install it

Right now **SYNwall** is in the form of a Linux Kernel injectable module. So you can grab the sources and compile it:
```bash
# sudo apt-get install linux-headers-$(uname -r)
# git clone https://github.com/SYNwall/SYNwall.git
# cd SYNwall
# make
```

Now you are ready to load the module. 

`WARNING:` this is going to drop all the traffic to your device, so be sure to know how to access with another SYNwall device or by disabling it remotely (port knocking). Read the docs if unsure:
 
```bash

# sudo insmod SYNwall.ko psk=123456789012345678901234567890123 precision=10 portk=12,13,14,15,16 load_delay=10000 enable_udp=1

```
In the future we plan to move it to other platforms (ESP8266?) and hardware.

# More Info

*  [Main Github repository](https://github.com/SYNwall/SYNwall)
*  [Github Wiki](https://github.com/SYNwall/SYNwall/wiki)
*  [Ansible package](https://github.com/SYNwall/SYNwall_distrib)
*  [Docs](https://github.com/SYNwall/SYNwall_docs)

* * *

<a href="https://www.sorint.it"><img src="/assets/images/SorintLab_spa.png" width="180"></a>
