from flask import Flask
import subprocess
import socket

app = Flask(__name__)

@app.route('/', methods=['POST'])
def stress_cpu():
    # Run stress_cpu.py as a separate process
    subprocess.Popen(["python3", "stress_cpu.py"])
    return "CPU stress test initiated", 202

@app.route('/', methods=['GET'])
def get_ip():
    # Get the private IP address of the EC2 instance
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    return ip_address

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
