# Use the official PostgreSQL image as a base
FROM postgres:latest

# Set enviroment variables for PostgreSQL
ARG POSTGRES_PASSWORD
ARG POSTGRES_USER
ARG POSTGRES_DB

# Set environment variables
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_DB=${POSTGRES_DB}

# Expose the default PostgreSQL port
EXPOSE 5432

# Set the default command to run when starting the container
CMD ["postgres"]
