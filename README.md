# ANSRISE

# Jenkins Pipeline Demo Project

This repository demonstrates a simple **Continuous Integration (CI)** and **Continuous Deployment (CD)** workflow using **Jenkins Pipeline**. The project is a basic Java application built with Maven, containerized with Docker, and deployed as a Docker container.

---

## 🛠️ Project Structure

```
my-jenkins-pipeline-demo/
├── Jenkinsfile         # Jenkins Pipeline script
├── Dockerfile          # Script to build a Docker image
├── pom.xml             # Maven build configuration
├── src/
│   └── main/
│       └── java/
│           └── App.java  # Simple Java application
└── target/             # Maven build artifacts (created after the build)
```

---

## ✨ Features

- **Automated CI/CD Pipeline**:
  - Clone the code from GitHub.
  - Build the project using Maven.
  - Run unit tests.
  - Package the project into a JAR file.
  - Build a Docker image for deployment.
  - Deploy the application as a Docker container.

---

## 🚀 Getting Started

### Prerequisites
1. **Jenkins** installed on your system or accessible online.
   - Required plugins:
     - Git Plugin
     - Pipeline Plugin
     - Docker Plugin
2. **Docker** installed on the Jenkins server and local machine.
3. **Maven** installed for local testing.

---

### 🖥️ Local Setup and Testing

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/my-jenkins-pipeline-demo.git
   cd my-jenkins-pipeline-demo
   ```

2. **Build the project locally:**
   ```bash
   mvn clean install
   ```

3. **Run the application locally:**
   ```bash
   java -cp target/jenkins-pipeline-demo-1.0-SNAPSHOT.jar App
   ```

4. **Test the Docker image:**
   - Build the image:
     ```bash
     docker build -t demo-app .
     ```
   - Run the container:
     ```bash
     docker run -p 8080:8080 demo-app
     ```
   - Verify the application is running:
     ```bash
     curl http://localhost:8080
     ```

---

### 🛠️ CI/CD Pipeline with Jenkins

1. **Set up Jenkins Pipeline Job:**
   - In Jenkins, create a new pipeline job.
   - Configure it to use this repository.

2. **Jenkinsfile Workflow:**
   - Clone the repository.
   - Build the project using Maven.
   - Run unit tests.
   - Package the application into a JAR file.
   - Build a Docker image.
   - Deploy the Docker container.

3. **Run the Pipeline:**
   - Trigger the pipeline manually or set it to run automatically on GitHub commits.

---

## 📂 Files and Configuration

### **Jenkinsfile**
Defines the stages of the CI/CD pipeline:
- **Clone Repository**
- **Build**
- **Test**
- **Package**
- **Build Docker Image**
- **Deploy**

### **Dockerfile**
Defines the steps to containerize the Java application:
- Use OpenJDK base image.
- Copy the JAR file into the container.
- Run the JAR as the entry point.

---

## 🧪 Testing and Deployment

- Ensure Jenkins has permissions to execute Docker commands.
- Validate the Jenkinsfile using the **Jenkins Pipeline Linter** before running.

---

## 🔗 Useful Commands

### Docker
- Build image:  
  ```bash
  docker build -t demo-app .
  ```
- Run container:  
  ```bash
  docker run -p 8080:8080 demo-app
  ```
- Stop container:  
  ```bash
  docker stop <container-id>
  ```

---

## 📖 References

- [Jenkins Documentation](https://www.jenkins.io/doc/)
- [Docker Documentation](https://docs.docker.com/)
- [Maven Documentation](https://maven.apache.org/)

---

## 🤝 Contributing

Feel free to fork the repository and create a pull request. Contributions are always welcome!

---

## 📜 License

This project is licensed under the MIT License.

# ALL THE BEST
