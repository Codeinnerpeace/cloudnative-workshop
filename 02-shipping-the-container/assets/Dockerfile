# Start from an image that already contains Node.js 18
FROM node:18-alpine

# Work inside /app in the image
WORKDIR /app

# Copy our app files into the image
COPY package.json app.js ./

# Document the port the app listens on
EXPOSE 3000

# Command that runs when the container starts
CMD ["node", "app.js"]
