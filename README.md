## 🚀 PROJET BIG DATA – MARKETING DATA-DRIVEN avec Snowflake
 
## Contexte du projet 

Ce projet s’inscrit dans le cadre de l’évaluation **Architecture Big Data** (MBA ESG).  
Il simule une initiative de transformation data-driven menée par **AnyCompany Food & Beverage**, une entreprise fictive confrontée à une baisse significative de ses ventes et à une réduction de 30 % de son budget marketing.

L’objectif du projet est de démontrer comment une architecture Big Data moderne, basée sur Snowflake, permet d’exploiter efficacement les données existantes afin de soutenir la prise de décision marketing et commerciale.

---


## Répartition des tâches au sein du groupe

Afin de mener à bien le projet, les tâches ont été réparties entre les membres du groupe comme suit :

 ### MINGUE KEPSI Bobic

- Mise en place de l’environnement Snowflake
- Création des schémas BRONZE, SILVER et ANALYTICS
- Chargement des données (COPY INTO)
- Nettoyage des données (tables SILVER)

### ADONI Allika Mireille

- Analyses exploratoires SQL (Phase 2.1 et 2.2)
- Analyses transverses métiers (impact promotions, performance marketing)
- Rédaction des scripts d’analyse SQL

### TAGNE KAMGHEM Leonel

- Création du produit de données analytique
- Feature engineering
- Rédaction des recommandations business
- Structuration du dépôt GitHub et documentation (README, business_insights)

##  Objectifs business

- Inverser la tendance à la baisse des ventes
- Identifier les leviers marketing les plus efficaces
- Optimiser l’allocation du budget marketing
- Exploiter les données clients, ventes, promotions et campagnes
- Proposer des recommandations business exploitables

---

##  Architecture générale

Le projet repose sur une architecture en couches respectant les bonnes pratiques Data Engineering :

- **BRONZE** : données brutes (CSV / JSON)
- **SILVER** : données nettoyées et cohérentes
- **ANALYTICS** : produit de données analytique final

---

## 🔹 Phase 1 – Préparation et intégration des données

### ✅ Étape 1 – Environnement Snowflake
- Création de la base ANYCOMPANY_LAB
- Création des schémas BRONZE, SILVER et ANALYTICS
- Création d’un stage Snowflake connecté à Amazon S3

### ✅ Étape 2 – Création des tables BRONZE
- Identification des structures CSV / JSON
- Création des tables BRONZE

### ✅ Étape 3 – Chargement des données
- Chargement via COPY INTO
- Gestion des erreurs de parsing
- Vérification des volumes

### ✅ Étape 4 – Vérifications
- Vérification du nombre de lignes
- Inspection d’échantillons
- Identification des colonnes clés

### ✅ Étape 5 – Nettoyage (SILVER)
Création des tables nettoyées suivantes :
- financial_transactions_clean
- customer_demographics_clean
- marketing_campaigns_clean
- promotions_clean
- inventory_clean
- logistics_and_shipping_clean

---

## 🔹 Phase 2 – Exploration et analyses métier

### ✅ Partie 2.1 – Compréhension des données
- Périmètre métier
- Volumes et périodes
- Colonnes clés et anomalies

### ✅ Partie 2.2 – Analyses descriptives
- Évolution des ventes
- Performance régionale
- Segmentation clients

### ✅ Partie 2.3 – Analyses transverses
- Impact des promotions
- Performance marketing
- Logistique et coûts

---

## 🔹 Phase 3 – Produit de données et recommandations

### ✅ Partie 3.1 – Produit de données
- Création de la table analytics_sales_product

### ✅ Partie 3.2 – Feature Engineering
- promotion_active
- sales_year, sales_month
- income_segment

### ✅ Partie 3.4 – Recommandations business
- Optimisation des promotions
- Réallocation du budget marketing
- Ciblage client
- Réduction des coûts logistiques

---

## 📈 Résultats clés

- Données centralisées et exploitables
- Leviers marketing identifiés
- Décisions alignées avec les contraintes budgétaires

---

## 🧠 Conclusion

Ce projet démontre comment une architecture Big Data permet de transformer des données hétérogènes en insights métier actionnables.

---



