FROM python:3.11-slim

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . /opt/app-root/src
WORKDIR /opt/app-root/src

# Copy S2I scripts
COPY .s2i/environment /usr/libexec/s2i/environment
COPY .s2i/bin/run /usr/libexec/s2i/run

# Run the application
CMD ["/usr/libexec/s2i/run"]
