FROM rust:latest as builder

# Copy the entire project (assuming the Dockerfile is in the same dir as .git)
WORKDIR /usr/src/yara-x
RUN apt-get update && apt-get install -y --no-install-recommends musl-tools
# Build the CLI
RUN rustup target add x86_64-unknown-linux-musl
RUN cargo install --target x86_64-unknown-linux-musl --path /usr/src/yara-x/cli --root /usr/local

# --- Runtime Image ---
FROM debian:bullseye-slim

# Install necessary runtime dependencies (libssl).
# yara-x dynamically links against libssl, so we need it at runtime.
# We use a minimal base image (debian:bullseye-slim) to keep the final image small.
RUN apt update && apt install -y --no-install-recommends \
    libssl-dev ca-certificates musl-tools && \
    rm -rf /var/lib/apt/lists/*

# Copy the compiled binary from the builder stage
COPY --from=builder /usr/local/bin/yr /usr/local/bin/yr

COPY ./yara-rules/rules /rules

VOLUME ["/malware"]
VOLUME ["/rules"]
WORKDIR /malware
# Set the entrypoint to the yara-x executable
ENTRYPOINT ["/usr/local/bin/yr"]

# Default command (can be overridden when running the container)
CMD ["--help"]
