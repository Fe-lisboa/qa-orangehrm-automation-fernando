# Projeto Robot Framework - OrangeHRM

Este projeto contém testes automatizados do sistema **OrangeHRM** utilizando **Robot Framework** e **Playwright**, incluindo testes positivos e negativos de login.

---

## Pré-requisitos

1. **Python 3.11+**  
   [Download Python](https://www.python.org/downloads/)

2. **Robot Framework**  
   ```bash
   pip install robotframework


## Estrutura

```
robot-orangehrm/
├── resources/
│   ├── Browser.robot
│   ├── Variables.robot
│   ├── LoginPage.robot
│   ├── DashboardPage.robot
│   └── PIMPage.robot
├── tests/
│   ├── login_test.robot
│   ├── add_employee_test.robot
│   └── search_employee_test.robot
├── requirements.txt
├── robot.yaml
└── .github/
    └── workflows/
        └── robot-ci.yml
```

## Pré-requisitos (local)
- Python 3.10+
- `pip` instalado



## Instalação e execução (local)

```bash
pip install -r requirements.txt
rfbrowser init        # instala o Playwright e os browsers necessários
robot tests/
```

## GitHub Actions

O pipeline já está configurado em `.github/workflows/robot-ci.yml` para executar os testes em pushes e PRs na branch `main`.

## Execução dos testes
robot -d results \
      --report report.html \
      --log log.html \
      --output output.xml \
      --reporttitle "Relatório de Testes OrangeHRM" \
      --logtitle "Log de Testes OrangeHRM" \
      tests/

