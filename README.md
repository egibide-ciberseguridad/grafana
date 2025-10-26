# Grafana

Servidor de [Grafana](https://grafana.com) en contenedores Docker.

## Funcionamiento

1. Arrancar los contenedores:

    ```shell
    make start
    ```

2. Acceso a los servicios:

    - [Grafana](http://localhost:3000)
    - [Prometheus](http://localhost:9090)

> Iniciar sesión con el usuario `admin/admin` y cambiar la contraseña cuando lo pida.

## Referencias

- [Grafana documentation](https://grafana.com/docs/grafana/latest/)
- [Prometheus](https://prometheus.io/docs/introduction/overview/)
- [logporter](https://github.com/Lifailon/logporter)
