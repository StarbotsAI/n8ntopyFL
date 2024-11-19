from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.json
    print(f"Recebido: {data}")
    return jsonify({"status": "sucesso", "mensagem": "Webhook processado!", "data": data}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)