# DevopsBeadando
Alább található a projekt generálása után automatikusan létrehozott, valamint az általam kézzel készített leírás is.

## SAJÁT README TARTALOM ##

## Build
Terminálban a következő parancsokkal lehet lokálisan buildelni és futtatni a projektet.

Fejlesztői futtatás:
1. npm i
2. ng serve --port 8080

Production build:
1. npm i
2. npm run build

## Docker build és run
Terminálban a következő parancsokkal lehet docker image-t készíteni és futtatni.
A parancsok használatához szükséges elindítani a Docker Desktop alkalmazást.

Image build: `docker build -t hello-devops:v1 .`
Futtatás: `docker run -p 8080:80 hello-devops:v1`

## Cloud deployment
A publikáláshoz a render.com oldalt használtam. Az app elérhető az alábbi címen: https://devops-beadando.onrender.com/
Mivel egy statikus angular appot készítettem, pluszban kellett egy static.json a deploymenthez.
A sikeres deployhoz a render oldalán meg kellett adni a repository linkjét, a branch nevét, build parancsokat (npm install && npm run build) és a publish directoryt.
A publish directory értékéhez lokálisan kiadtam az ng build parancsot, amivel létrejött a dist mappa, azon belül pedig egy devops-beadando nevű mappa. Ezt adtam meg publish directoryként (dist/devops-beadando/browser).
Ezután a render automatikusan felépítette és publikálta az alkalmazást.

## GENERATED README CONTENT BELOW ##
This project was generated using [Angular CLI](https://github.com/angular/angular-cli) version 21.0.1.

## Development server

To start a local development server, run:

```bash
ng serve --port 8080
```

Once the server is running, open your browser and navigate to `http://localhost:8080/`. The application will automatically reload whenever you modify any of the source files.

## Code scaffolding

Angular CLI includes powerful code scaffolding tools. To generate a new component, run:

```bash
ng generate component component-name
```

For a complete list of available schematics (such as `components`, `directives`, or `pipes`), run:

```bash
ng generate --help
```

## Building

To build the project run:

```bash
ng build
```

This will compile your project and store the build artifacts in the `dist/` directory. By default, the production build optimizes your application for performance and speed.

## Running unit tests

To execute unit tests with the [Vitest](https://vitest.dev/) test runner, use the following command:

```bash
ng test
```

## Running end-to-end tests

For end-to-end (e2e) testing, run:

```bash
ng e2e
```

Angular CLI does not come with an end-to-end testing framework by default. You can choose one that suits your needs.

## Additional Resources

For more information on using the Angular CLI, including detailed command references, visit the [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli) page.
