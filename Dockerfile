# Use the official Bun image from Oven
FROM oven/bun

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN bun install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# コマンドラインでアクセスできるようにするための設定
ENTRYPOINT ["/bin/bash"]
