import os
from website import app  # adjust this if your app is imported differently


if __name__ == "__main__":
    # Get the port from Render's environment, default to 5000 for local dev
    port = int(os.environ.get("PORT", 5000))
    # Bind to all interfaces
    app.run(host="0.0.0.0", port=port)
