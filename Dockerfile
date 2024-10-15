# Use the latest Alpine Linux image
FROM alpine:latest

# Install curl
RUN apk add --no-cache curl

# Add non-root user and group with specific UID and GID
RUN addgroup --gid 10014 choreo && \
    adduser --disabled-password --no-create-home --uid 10014 --ingroup choreo choreouser

# Switch to the non-root user
USER choreouser

# Execute the curl command to invoke the given URL and output the response
CMD ["sh", "-c", "curl \"$URL\""]
