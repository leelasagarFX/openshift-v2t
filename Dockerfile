# Use official NGINX image
FROM nginx:alpine

# Remove default static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files into the NGINX html directory
COPY Text-to-Speech /usr/share/nginx/html/Text-to-Speech
COPY Voice-to-Text /usr/share/nginx/html/Voice-to-Text

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
