
# Django Containerization with Docker, Docker Compose, Poetry, and Nginx

This project demonstrates how to containerize a Django application using **Docker**, **Docker Compose**, **Poetry**, and **Nginx** for a production-ready deployment.  

---

## 📁 Project Structure

```plaintext
├── backend_django
│   ├── backend_django
│   │   ├── asgi.py
│   │   ├── settings.py
│   │   ├── urls.py
│   │   └── wsgi.py
│   ├── entrypoint.sh
│   ├── manage.py
│   ├── media
│   ├── staticfiles
│   └── firstapp
│       ├── models.py
│       ├── views.py
│       └── urls.py
├── docker-compose.yml
├── Dockerfile
├── nginx
│   ├── default.conf
│   └── Dockerfile
├── requirements.txt
├── pyproject.toml
└── poetry.lock
```

---

## 🔧 Setup Instructions  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/your-repo-link.git
cd your-repo-link
```

### 2️⃣ Build and Run Docker Containers  
Ensure Docker and Docker Compose are installed on your system. Then run:  
```bash
docker-compose up --build
```

### 3️⃣ Access the Application  
- Open your browser and go to `http://localhost`.  
- Static files are served at `/static/`, and media files are at `/media/`.

---

## 🖼️ Key Configuration Files  

### `docker-compose.yml`
![WhatsApp Image 2024-12-11 at 2 53 52 PM](https://github.com/user-attachments/assets/1eed0046-58b2-4d73-b51f-6a15a5246586)


### `Dockerfile`  
![WhatsApp Image 2024-12-11 at 2 54 49 PM](https://github.com/user-attachments/assets/97665d30-f8c7-40f0-8729-ba166fc6b25f)


### `nginx/default.conf`  
![WhatsApp Image 2024-12-11 at 2 54 49 PM](https://github.com/user-attachments/assets/58ab8bd0-d433-4e04-9735-e54320d862ef)


---

## 📜 Commands

### Build Images and Start Containers  
```bash
docker-compose up --build
```

### Stop Containers  
```bash
docker-compose down
```

### Access Running Containers  
```bash
docker exec -it <container_name> /bin/bash
```

### Check Logs  
```bash
docker-compose logs -f
```

---

## 🚀 Features  
- **Dockerized Django app**: Seamless development and deployment environment.  
- **Poetry for dependencies**: Manage Python packages efficiently.  
- **Nginx**: Reverse proxy for serving the app with static and media files.  

---


