# BBHT for Docker Containers - Setup from scratch
A single script for the most popular tools you need for bug bounty. This script can setup a container from scratch with the required tools to get started on your journey towards Bounty Hunting

### FYI  
**This script is intended to setup a container from scratch. As containers take up a huge amount of memory, this script may be modified to include or exclude tools, but will ensure the inclusion of all the required tools.**

*Shout-out to original creator of bbhtv1 >> https://github.com/nahamsec  
Shout-out to creator of bbhtv2 >> https://github.com/unethicalnoob*

## Table of Contents 

- [List of tools](#Categorized-the-list-of-tools)
- [Installation](#installation)


## Categorized the list of tools

* Subdomain Enum tools        - amass,subfinder,assetfinder,subdomainizer,sublister,findomain....
* Subdomain Takeover          - subover,autosubtakeover,tko-subs,subjack....
* Cloud Workflow              - aws_recon,festin,lazys3,s3brute,flumberboozle,slurp....
* Fuzzing                     - gobuster,wfuzz,ffuf,dirsearch....
* Visual Inspection           - aquatone,gowitness,httpscreenshot...
* Content Discovery           - gospider,hakrawker,photon,paramspider...
* CMS Tools                   - wpscan,drupwn,wig...
* GIT enum tools              - githound,gitgraber,trufflehog,gitscanner...
* Frameworks                  - Sn1per,osmedeus,cobra,sudomy...
* JS enum tools               - jsscanner,jsparser,linkfinder...
* Fingerprint & CVE tools     - nuclei,webtech,waf...
* Port Scanning               - nmap,masscan,naabu,brutespray...
* Wordlists                   - commonspeak2,payloadallthings,seclists...


---

## Installation
```
If not already installed:
> apt-get install git
> apt-get update
```

```
git clone https://github.com/nagarajandeepu/BBHT-Container-Setup.git
cd BBHT-Container-Setup
chmod +x container_bbhtv2_setup.sh
./container_bbhtv2_setup.sh
```
