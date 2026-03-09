FROM ghcr.io/openclaw/openclaw:2026.3.2

RUN mkdir /home/node/.openclaw

COPY openclaw.json /tmp/openclaw

USER root

RUN apt-get update && apt-get install -y \
    chromium \
    fonts-liberation \
    libnss3 \
    libatk-bridge2.0-0 \
    libxkbcommon0 \
    libgtk-3-0 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libgbm1 \
    libasound2

RUN node /app/node_modules/playwright-core/cli.js install chromium

COPY start.sh /app/start.sh

RUN chmod +x /app/start.sh