# UFW Firewall Configuration Script

## Description

This repository contains a *UFW firewall configuration script* for Linux systems (Ubuntu/Debian). The script sets up a basic firewall that:

* *Allows SSH connections* (port 22) to maintain remote access
* *Denies HTTP traffic* (port 80) to restrict web access

It was created as part of the *Oasis Infobyte internship task*.

A detailed *report with commands, explanations is also available and linked in this README.

## Prerequisites

* Linux system (Ubuntu/Debian recommended)
* Terminal access with *sudo privileges*
* Internet connection for package installation

## Commands and Explanation

1. Update and upgrade Packages
 Command:
 sudo apt update && sudo apt upgrade -y

Explanation:
sudo apt update refreshes the package index (checks for the latest versions of all packages available).
sudo apt upgrade -y upgrades all installed packages to the latest versions automatically (-y skips confirmation).

Output explanation:
A list of packages that will be upgraded.
Progress bars showing download and installation.
Ends with something like 0 upgraded, 0 newly installed, 0 to remove. (if everything is up-to-date).

2. Install UFW
Command:
sudo apt install ufw -y

Explanation:
Installs Uncomplicated Firewall (UFW), a simple interface for managing firewall rules.
The -y flag auto-confirms installation.

Output explanation:
Shows “Reading package lists… Done” and “Setting up ufw”.
If already installed, it may say: ufw is already the newest version.

3. Allow SSH connections
Command:
sudo ufw allow ssh

Explanation:
Adds a firewall rule to allow incoming SSH connections (port 22).
This ensures you don’t get locked out if you’re connected remotely.

Output explanation:
Rule added
If the rule already exists, you’ll see, Skipping adding existing rule.

4. Deny HTTP connections
Command:
sudo ufw deny http

Explanation:
Blocks incoming traffic on HTTP (port 80).
This is to demonstrate restricting unwanted services.

Output explanation:
Rule added
Or if already blocked, Skipping adding existing rule.

5. Enable UFW
Command:
sudo ufw enable

Explanation:
Activates the firewall with the rules defined earlier.
From now on, only allowed traffic (SSH) is permitted, and denied traffic (HTTP) is blocked.

Output explanation:
Command may disrupt existing ssh connections. Proceed with operation (y|n)?
Type y, then you’ll see: Firewall is active and enabled on system startup.

6. Check UFW status
Command:
sudo ufw status verbose

Explanation:
Displays the firewall’s active rules and status.
verbose adds extra details, like default policies.

Output explanation:

Status: active
Rules list:

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW       Anywhere
80/tcp                     DENY        Anywhere
22/tcp (v6)                ALLOW       Anywhere (v6)
80/tcp (v6)                DENY        Anywhere (v6)


Shows that SSH is allowed and HTTP is denied.


*Explanation:*

* Updates and upgrades the system packages
* Installs the UFW firewall
* Allows SSH (port 22) for remote access
* Denies HTTP (port 80) to restrict web access
* Enables the firewall and displays its status
  
##Screenshots 
The detailed screenshots of the outputs (including UFW status showing active rules) are provided in the report document.
