from flask import Flask, jsonify
import datetime
import os

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        'message': 'Auto-deployment is WORKING! 🚀',        'timestamp': datetime.datetime.now().isoformat(),  # Current time
        'version': '1.0'                       # App version
    })

@app.route('/health')
def health():
    return 'OK', 200      # Kubernetes health check

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))   # Use port from env or 5000
    app.run(host='0.0.0.0', port=port)         # Start server