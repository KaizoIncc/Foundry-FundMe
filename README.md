# 🏗️ Foundry FundMe

Este repositorio contiene una implementación del contrato inteligente **FundMe**, desarrollada utilizando el framework [Foundry](https://book.getfoundry.sh/). El contrato permite a los usuarios financiar el contrato con ETH, y al propietario retirar los fondos. Además, integra Chainlink para garantizar que las contribuciones cumplan con un valor mínimo en USD.

## 📁 Estructura del Proyecto

- `src/`: Contiene los contratos inteligentes principales.
- `script/`: Scripts para desplegar y gestionar los contratos.
- `test/`: Pruebas automatizadas escritas en Solidity.
- `broadcast/`: Registros de despliegue generados por Foundry.
- `lib/`: Dependencias externas y bibliotecas.
- `foundry.toml`: Archivo de configuración de Foundry.
- `Makefile`: Comandos útiles para automatizar tareas comunes.

## 🚀 Requisitos Previos

Asegúrate de tener instalados los siguientes componentes:

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- [Git](https://git-scm.com/)

Para verificar la instalación de Foundry:

```bash
forge --version
```

## ⚙️ Instalación y Uso

# Clonar el repositorio:

```bash
git clone https://github.com/KaizoIncc/Foundry-FundMe.git
cd Foundry-FundMe
```

# Compilar los contratos:

```bash
forge build
```

# Ejecutar las pruebas:

```bash
forge test
```

# Formatear el código:

```bash
forge fmt
```

# Tomar una instantánea de gas:

```bash
forge snapshot
```

# Iniciar un nodo local con Anvil:

```bash
anvil
```

# Desplegar el contrato:

```bash
forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
```
Reemplaza <RPC_URL> y <PRIVATE_KEY> con tu URL de RPC y clave privada correspondientes.

## 🧪 Pruebas

Las pruebas están ubicadas en la carpeta test/ y están escritas en Solidity utilizando el framework de pruebas de Foundry. Para ejecutarlas con mayor detalle:

```bash
forge test -vv
```

## 📝 Licencia

Este proyecto está bajo la licencia MIT.

## 🙌 Agradecimientos

Este proyecto se basa en el curso de Cyfrin Updraft y ha sido adaptado para prácticas personales.
