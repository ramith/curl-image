# Use the latest Alpine Linux image
FROM alpine:latest

# Install curl
RUN apk add --no-cache curl
# Execute the curl command to invoke the given URL and output the response
CMD ["sh", "-c", "curl \"$URL\""]
