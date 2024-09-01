# Use the official Python image
FROM python:3.12

# Set environment variables
ENV PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_VERSION=1.8.3 \
    POETRY_HOME=/opt/poetry \
    POETRY_VIRTUALENVS_IN_PROJECT=true \
    POETRY_NO_INTERACTION=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONPATH=/application/app/src \
    PATH="$POETRY_HOME/bin:$PATH"

# Install curl and other dependencies
RUN apt-get update && apt-get install -y curl build-essential libpq-dev

# Check Python version
RUN python3 --version

# Install Poetry using pip
RUN pip install poetry==$POETRY_VERSION

# Verify Poetry installation
RUN echo $PATH && poetry --version

# Set working directory
WORKDIR /application

# Copy project files
COPY . .

# Install dependencies
RUN poetry install

# Specify the command to run on container start
CMD ["./start-local.sh"]
