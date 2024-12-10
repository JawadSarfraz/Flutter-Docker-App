FROM cirrusci/flutter:stable

# Set working directory
WORKDIR /app

# Copy your Flutter project into the container
COPY . .

# Verify Flutter setup
RUN flutter doctor

# Expose port 8080
EXPOSE 8080

# Run Flutter app on web server
CMD ["flutter", "run", "-d", "web-server", "--web-port", "8080", "--web-hostname", "0.0.0.0"]
