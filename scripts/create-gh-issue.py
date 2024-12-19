import requests
import sys
import os

if len(sys.argv) != 3:
    raise ValueError("Exactly two arguments are required. Order must be: Title, URL")
GH_API_KEY = os.getenv("GH_API_KEY")

title = "[Discussion] " + sys.argv[1]
body = "You can read the article [here](" + sys.argv[2] + ")"
labels = ["Discussion"]
headers = {
    "Authorization": f"Bearer {GH_API_KEY}",
    "Content-Type": "application/json"
}
data = {
            "title": title,
                "body": body,
                    "labels": labels
                    }

response = requests.post("https://api.github.com/repos/hstsethi/hstsethi.vercel.app/issues", json=data, headers=headers)

if response.status_code == 201:
        print("Issue created successfully!")
else:
        print("Error creating issue:", response.status_code)

