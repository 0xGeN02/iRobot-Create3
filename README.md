# iRobot-Create3

## Configuración del entorno

Para configurar el entorno Conda para este proyecto, sigue estos pasos:

1. Instalar *WSL* Ubuntu

   ```sh
   wsl --install
   wsl --set-default-version 2
   ```

   *Reinicia el PC y abre PowerShell*

   ```sh
   wsl --install -d Ubuntu
   ```

   - Inicializamos Ubuntu

   ```sh
   wsl --set-version Ubuntu 2
   ```

   *Instalamos dependencias de Ubuntu*

   ```sh
   wsl
   ```

   ```wsl
   sudo apt update
   sudo apt upgrade
   ```

2. **Instalacion de python3 y creamos el Virtual Enviroment**

   ```wsl
   sudo apt install python3 python3-pip python3-venv mkdocs
   ```

   - Navega al directorio de tu proyecto y ejecuta el script `setup_env.sh`:

     ```wsl
     chmod +x setup_env.sh
     ./setup_env.sh
     ```

3. **Obtener los docuemntos en servidor local**

   ```wsl
   cd create3_docs
   mkdocs serve
   ```

   Se va a crear la documentacion en server: [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
