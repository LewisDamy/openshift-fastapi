FROM python:3.11-slim

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . /opt/app-root/src
WORKDIR /opt/app-root/src

# S2I scripts
COPY .s2i/bin/ /usr/libexec/s2i

# Run the application
CMD ["/usr/libexec/s2i/run"]
