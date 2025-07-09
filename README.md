# Terraform Azure TP1 - Premier Déploiement

Ce projet contient le code Terraform pour déployer des ressources Azure basiques dans le cadre du TP1.

## 📋 Ressources déployées

- **Groupe de ressources** : `monrgterraform`
- **Compte de stockage** : `---`
- **Région** : West Europe
- **Type de réplication** : LRS (Locally Redundant Storage)

## 🚀 Prérequis

- Terraform >= 1.0
- Azure CLI installé et configuré
- Compte Azure actif

## 📝 Instructions d'utilisation

### 1. Cloner le repository
```bash
git clone https://github.com/VOTRE-USERNAME/terraform-azure-tp1.git
cd terraform-azure-tp1
```

### 2. Se connecter à Azure
```bash
az login
```

### 3. Initialiser Terraform
```bash
terraform init
```

### 4. Planifier le déploiement
```bash
terraform plan
```

### 5. Appliquer la configuration
```bash
terraform apply
```

### 6. Détruire les ressources (après test)
```bash
terraform destroy
```

## 📁 Structure du projet

```
.
├── main.tf              # Configuration principale Terraform
├── README.md            # Documentation du projet
└── .gitignore          # Fichiers à ignorer par Git
```

## ⚠️ Notes importantes

- Le nom du compte de stockage doit être globalement unique
- Pensez à détruire les ressources après les tests pour éviter les coûts
- Ne jamais committer les fichiers `.tfstate` dans Git

## 🎓 Contexte pédagogique

Ce projet a été réalisé dans le cadre du TP1 sur Terraform et Azure à l'école IPSSI.

**Objectifs d'apprentissage :**
- Comprendre les concepts de base de Terraform
- Maîtriser le cycle de vie des ressources (init, plan, apply, destroy)
- Déployer des ressources Azure simples
- Vérifier les déploiements via le portail Azure
