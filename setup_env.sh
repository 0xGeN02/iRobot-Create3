#!/bin/bash

# Nombre del entorno virtual
ENV_DIR="iRobot"

# Verificar si el entorno virtual ya existe
if [ -d "$ENV_DIR" ]; then
    echo "El entorno virtual '$ENV_DIR' ya existe. Activando el entorno..."
else
    echo "Creando el entorno virtual '$ENV_DIR'..."
    python3 -m venv $ENV_DIR
fi

# Activar el entorno virtual
source $ENV_DIR/bin/activate

# Actualizar pip
pip install --upgrade pip

# Instalar las dependencias
pip install numpy mkdocs mkdocs-material
pip install -r create3_docs/requirements.txt
pip3 install irobot_edu_sdk
cd irobot-edu-python-sdk && pip install .

echo "El entorno virtual '$ENV_DIR' está listo y las dependencias están instaladas."