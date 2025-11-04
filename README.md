# kubernetesmysqlreplication
# MySQL Master–Replica with TLS (Work in Progress)

## Overview

This project is a Dockerized personal project running **MySQL in a master–replica configuration with TLS/SSL** for secure replication. The stack includes:

1. **2 MySQL servers**:

   * **Master**: hosts the primary database and table(s)  
   * **Replica**: connects securely to the master and mirrors the data
2. **TLS/SSL certificates**: used to encrypt replication traffic  
3. **ConfigMaps for initialization**: automate database, table creation, and replication setup

The main goal is to **explore secure database replication in containers** and prepare for **future Kubernetes deployment** with stateful services.

---

## Current Status

**Working components:**

* MySQL master and replica containers running via Kubernetes  
* Secure replication configured using SSL  
* Initialization scripts for creating users, databases, and tables  
* Replica starts replication automatically after master is ready  

**In progress:**

* Automate dynamic provisioning for replicas in Kubernetes  
* Handle replication error recovery when binary logs are purged  
* Add monitoring and alerting for replication health  

---

## What I’ve Learned So Far

* Practical experience with **MySQL replication** (GTID-based, SSL-enabled)  
* Understanding **ConfigMaps for database initialization**  
* Troubleshooting replication issues such as missing binary logs  
* Reinforced step-by-step deployment discipline with Kubernetes  

---

## Next Steps

1. Automate safe re-provisioning of replicas after master reset  
2. Add multiple replicas and test failover scenarios  
3. Deploy on **Kubernetes StatefulSets** with persistent volumes  
4. Integrate secrets management for replication credentials (Vault/Secrets)  
5. Add monitoring (Prometheus + Grafana) for replication health  

---

## Project Context

This is a **personal learning project** aimed at mastering:

* **MySQL replication**  
* **Kubernetes stateful services**  
* **Secure containerized database setups**  

It documents hands-on experience with:

* Containerized databases  
* Secure replication  
* Kubernetes ConfigMaps and StatefulSets  

---

## Tech Stack

| Component                 | Description                                                    |
| ------------------------- | -------------------------------------------------------------- |
| **MySQL**                 | Master–Replica database setup                                  |
| **Kubernetes ConfigMaps** | Automates database and replication setup                       |
| **TLS/SSL**               | Secures replication traffic                                    |
| **Docker / Kubernetes**   | Containerized deployment                                       |
| *(Future)*                | Vault, Prometheus + Grafana, StatefulSets + Persistent Volumes |

---

## Getting Started

### Prerequisites

* Docker & Docker Compose plugin (`docker compose`) or Kubernetes cluster (Minikube, Kind, etc.)  
* OpenSSL (for generating TLS/SSL certificates)  

### Clone

```bash
git clone https://your-repo-url.git
cd mysql-replica-docker
