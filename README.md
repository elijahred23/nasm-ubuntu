## README: Docker Compose for NASM Assembly Development

This project provides a Docker Compose setup for developing and running NASM assembly programs on a containerized Ubuntu environment.

**Prerequisites:**

* Docker installed on your system.

**Getting Started:**

1. **Clone the Repository:**

   Clone this repository to your local machine.

2. **Build the Image:**

   Open a terminal window and navigate to the project directory. Run the following command to build the Docker image named `nasm_ubuntu`:

   ```
   docker-compose build
   ```

3. **Run the Container:**

   Start a container based on the built image with the following command:

   ```
   docker-compose up
   ```

   This will create and run a container named `nasm_ubuntu`. The container will stay running in the foreground, allowing you to interact with the assembly environment.

**Using the Container:**

* Your assembly code should be placed in the `assembly-programs` directory on your local machine.
* The container mounts this directory at `/programs/assembly-programs` within the container. Any changes made to your local assembly files will be reflected in the container.
* Once the container is running, you can use the NASM assembler and other tools available within the Ubuntu environment to compile and work with your assembly code.

**Explanation:**

* This `docker-compose.yml` file defines a service named `nasm_ubuntu`.
* The service builds an image based on the Dockerfile in the current directory (`context: .`) and uses `Dockerfile` as the Dockerfile name.
* The container is named `nasm_ubuntu` and runs the `tail -f /dev/null` command to keep the container running in the foreground. 
* Two volume mounts are defined:
    * `assembly-programs` volume on the host machine is mounted at `/programs/assembly-programs` inside the container. This allows two-way synchronization of your assembly code.
    * An additional volume with the same name (`assembly-programs`) is mounted with a bind mount (`./assembly-programs`). This provides redundancy, but you can typically remove one of the volume mounts if not needed.
* The standalone `volumes` section defines an empty volume named `assembly-programs`. This volume is referenced by the service for mounting.

**Additional Notes:**

* You can stop the container using `docker-compose down`.
* This is a basic setup for development purposes. You might want to customize the Dockerfile and container configuration based on your specific needs.

This readme provides clear instructions for using the Docker Compose application for NASM assembly development. It explains the components, functionality, and how to interact with the containerized environment.