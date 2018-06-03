# README.md

Deployment integration of lockate project.

## General notes

### Special step after cloning repos.

**parameter.yml** files are specific to each symfony installation.
The **parameter.yml** of LOCKATEAPI and the **parameter.yml** LOCKATEWEBSITE
must be copied to the the folder with the same name respectively.
These files are not included in the repos for security reasons.

### lockate_db

This is required for the DB container to work properly.
It contains an initial snapshot of the current DB and its schemas.

## Steps

### 1. Build the base image

```bash
$ cd base
$ docker build -t lock8/lock8-base .
```

#### 1.1 Test base image (optional)
**DO NOT MAKE CHANGES TO THE MACHINE! (being tested)!**
```bash
$ docker run -it lock8/lock8-base /bin/bash
```

### 2. API image

(In folder root)

```bash
$ git clone https://netpalta.com/diffusion/LOCKATEAPI/
```

#### 2.1 Build

- Copy `parameters.yml` to **./LOCKATEAPI**
- Copy keys (`private.pem`  and `public.pem` ) to root
    - You should have these files (we need to use the same standard ones), 
      if not or in doubt ask @calamar.

```bash
$ cd LOCKATEAPI
$ docker build -t lock8/lock8-api .
```

#### 2.2 Test api image (optional)

**DO NOT MAKE CHANGES TO THE MACHINE! (being tested)**
This test is just to check that the machine is working.
Request are NOT processed.
```bash
$ docker run -it -p 8081:8081 lock8/lock8-api
```

### 3. Website image

(In folder root)

```bash
$ git clone https://netpalta.com/diffusion/LOCKATEWEBSITE/
```

#### 3.1 Build

- Copy `parameters.yml` to **./LOCKATEWEBSITE** (env var set to `docker`)

```bash
$ cd LOCKATEWEBSITE
$ docker build -t lock8/lock8-website .
```

#### 3.2 Test website image (optional)

**DO NOT MAKE CHANGES TO THE MACHINE! (being tested)**
This test is just to check that the machine is working.
http://localhost:8080 should show the landing/login page.
The rest of the functions, like login, are not available.  
```bash
$ docker run -it -p 8080:8080 lock8/lock8-website
```

### 4. Websocket server image

(In folder root)

```bash
$ git clone https://netpalta.com/diffusion/LOCKWSSERVER/
```

#### 4.1 Build

```bash
$ cd LOCKWSSERVER
$ docker build -t lock8/lock8-wsserver .
```

#### 4.2 Test websocket server image (optional)

**DO NOT MAKE CHANGES TO THE MACHINE! (being tested)**
This test is just to check that the machine is working.
http://localhost:8080 should show the landing/login page.
The rest of the functions, like login, are not available.  
```bash
$ docker run -it -p 5556:5556 -p 8028:8028 lock8/lock8-wsserver
```

### 5. Specific Technical Notes

#### 5.1 MACOSX

To run it in MACOS 
Go to Docker -> Preferences -> File Sharing and add (+) the folders
- lockate_db
- LOCKATEAPI
- LOCKATEWEBSITE

#### 5.2 `parameters.yml`

For both website and api the key parameter is
```
database_host: db
```
Then all the containers have a DB as a common resource.

### 6. Integration (Run set of Containers)

#### 6.1 Build

```bash
$ docker-compose build
```

#### 6.2 Run

```bash
$ docker-compose up
```

Note: shortcut build and run 
```bash
$ docker-compose up --build
```

### 7. Full system functional test

```bash
curl -v -H "Content-Type: application/json" -X POST http://localhost:8081/api/v1/tokens -H "X-AUTH-TOKEN: schmier" -u uno:uno
```

with the token of the response do something like:
```bash
curl -v http://localhost:8081/api/v1/gateway/1 -H "Authorization: Bearer <token>"
```
```bash
curl -v http://localhost:8081/api/v1/senseddata -H "Authorization: Bearer <token>" -X POST -d '<lockate json packet>' 
```

### 8. Issues

#### 8.1 api container
Sending requests to the website from API container
```
 request.CRITICAL: Uncaught PHP Exception RuntimeException: "Failed to start the session because headers have already been sent by "/var/www/html/lockate_api/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php" at line 78." at /var/www/html/lockate_api/vendor/symfony/symfony/src/Symfony/Component/HttpFoundation/Session/Storage/NativeSessionStorage.php line 141 {"exception":"[object] (RuntimeException(code: 0): Failed to start the session because headers have already been sent by \"/var/www/html/lockate_api/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php\" at line 78. at /var/www/html/lockate_api/vendor/symfony/symfony/src/Symfony/Component/HttpFoundation/Session/Storage/NativeSessionStorage.php:141)"} []
```

Solution
https://knpuniversity.com/screencast/rest/project-routing
```
Victor Bocharsky KnpU  Nico Sedivy • 10 months ago
Hey Nico,
You need to configure timezone in php.ini. To find where your php.ini is, run:
$ php --ini
```

https://hub.docker.com/_/php/
We recommend that you add a custom php.ini configuration. 

The **php.ini** included in LOCKATEAPI has 
```
date.timezone = "Europe/Amsterdam"
```