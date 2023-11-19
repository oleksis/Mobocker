# Mobocker

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

The dummest container, is the smaller running container to keep Docker daemon alive.

![Mobockerc running on Docker Desktop](Mobocker-DD.png)

## Steps

- To keep the docker daemon service running infinity.
- Keep the docker enginge in "Resource Saver mode" disabled.
- If Docker Desktop GUI keep the status "Engine running" mode all work as expected.
- When the dockerd service in Windows is in "Resource Saver mode" enabled automatically stopping the Docker Desktop Linux VM when no containers are running for a period of time by default 5 mins.
- If "Resource Saver mode" is on the Docker Desktop GUI crash and closes unexpectedly

## How to use

```bash
docker build -t mobocker .
docker run -d --restart always --name Mobockerc mobocker
```

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

---
Happy Mobockerc, your services never sleep!
