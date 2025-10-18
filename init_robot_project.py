import os

folders = ["tests", "resources", "variables", "reports"]
files = {
    "requirements.txt": "",
    ".gitignore": "__pycache__/\n*.log\n*.xml\n*.pyc\nreports/\n",
}

for folder in folders:
    os.makedirs(folder, exist_ok=True)

for name, content in files.items():
    with open(name, "w", encoding="utf-8") as f:
        f.write(content)

print("✅ Robot Framework folder structure created successfully!")
