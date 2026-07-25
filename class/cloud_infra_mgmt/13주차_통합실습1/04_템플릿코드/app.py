from flask import Flask

app = Flask(__name__)


@app.route("/")
def chat():
    return "안녕하세요! 저는 클라우드인프라관리 수업의 미니 챗봇입니다. 무엇을 도와드릴까요?"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
