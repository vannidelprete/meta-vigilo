# meta-vigilo

Yocto layer for the [Vigilo](https://github.com/vannidelprete/vigilo) edge predictive maintenance gateway.

## Dependencies

| Layer | Branch |
|---|---|
| poky | scarthgap |
| meta-raspberrypi | scarthgap |
| meta-openembedded/meta-python | scarthgap |

## Layer contents

| Recipe | Description |
|---|---|
| `vigilo-detection` | Anomaly detection engine (Python, systemd service) |
| `vigilo-bridge` | MQTT -> InfluxDB bridge (paho-mqtt, systemd service) |

## Usage

Add this layer to your `bblayers.conf`:

```
BBLAYERS += "/path/to/meta-vigilo"
```

## License

[MIT](LICENSE)