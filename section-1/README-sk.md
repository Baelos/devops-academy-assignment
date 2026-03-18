# Sekcia 1 – AWS VPC spravovaná pomocou Terraformu

## Prehľad
Táto úloha vytvára AWS VPC pomocou nástroja Terraform. Súčasťou riešenia sú:
- verejné a súkromné subnety
- internet gateway
- NAT gateway
- routovacie tabuľky
- použitie premenných a modulu

## Architektúra
VPC obsahuje:
- 2 verejné subnety v rôznych availability zones
- 2 súkromné subnety v rôznych availability zones
- 1 internet gateway pripojenú k VPC
- 1 NAT gateway umiestnenú vo verejnom subnete
- public route table s prístupom na internet cez internet gateway
- private route table s odchádzajúcim prístupom na internet cez NAT gateway

## Prečo je tento návrh vhodný
Verejné subnety sú určené pre zdroje, ktoré musia byť dostupné z internetu, napríklad load balancer alebo bastion host.

Súkromné subnety sú určené pre interné služby, napríklad aplikačné servery alebo databázy, ktoré nemajú byť priamo vystavené do internetu.

NAT gateway umožňuje inštanciám v súkromných subnetoch komunikovať smerom von na internet, napríklad pri aktualizáciách alebo inštalácii balíkov, bez toho aby boli verejne dostupné.

## Štruktúra projektu
- koreňové Terraform súbory volajú modul a definujú premenné a výstupy
- znovupoužiteľná logika je umiestnená v `modules/vpc`

## Súbory
- `main.tf` – provider a volanie modulu
- `variables.tf` – vstupné premenné
- `outputs.tf` – výstupné hodnoty
- `terraform.tfvars` – konkrétne hodnoty premenných
- `modules/vpc/*` – implementácia VPC

## Použité príkazy
```bash
terraform init
terraform fmt
terraform validate
terraform plan
