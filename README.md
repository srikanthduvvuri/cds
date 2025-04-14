# 🧠 Credit Decisioning System

A modular, microservices-based credit evaluation system using Python, MongoDB, REST, and gRPC. Supports both Kubernetes and local `docker-compose` deployment.

---

## 🧩 Components

| Component             | Type     | Port | Description                                     |
|----------------------|----------|------|-------------------------------------------------|
| DecisionWrapper       | REST API | 5001 | Entry point for credit application              |
| IdentityVerification  | REST API | 5002 | Verifies applicant identity via 3rd parties     |
| CreditDecision        | gRPC     | 5003 | Orchestrates decision by scoring + underwriting |
| CreditUnderwriting    | REST API | 5004 | Decides loan terms & interest rate              |
| RiskScoringEngine     | REST API | 5005 | Calculates applicant risk score                 |
| MongoDB               | DB       | 27017| Persistent data store                           |

---

## 🚀 Quick Start (Local)

### 1. Build and start services

```bash
make up
