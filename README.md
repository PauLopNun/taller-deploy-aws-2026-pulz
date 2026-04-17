# Guía de Nomenclatura Git

Este documento resume las reglas de validación para evitar errores de CI/CD en el repositorio.

## 1. Validación de Ramas (Branch Names)
El nombre de la rama debe seguir el formato `tipo/descripcion-breve`.

* **Formato:** `tipo/nombre-de-la-rama`
* **Reglas:**
    * Todo en **minúsculas**.
    * Sin espacios (usa guiones `-`).
    * Sin caracteres especiales (ñ, tildes, símbolos).

**Ejemplos:**
* `feat/setup-docker`
* `fix/error-login`
* `chore/config-cli`

---

## 2. Validación de Commits (Conventional Commits)
El mensaje del commit debe seguir el estándar de *Conventional Commits* para ser aceptado.

* **Formato:** `tipo: descripción en minúsculas`
* **Reglas:**
    * **Tipo:** Debe ser una palabra clave seguida de dos puntos `:` y un espacio.
    * **Descripción:** Empieza en minúscula y no lleva punto final.

**Tipos permitidos:**
* `feat:` Una nueva funcionalidad.
* `fix:` Corrección de un error (bug).
* `chore:` Tareas de mantenimiento o configuración (ej. renombrar proyecto).
* `docs:` Cambios solo en la documentación.
* `style:` Cambios de formato (espacios, puntos y comas) que no afectan el código.
* `refactor:` Cambio de código que no corrige errores ni añade funciones.

**Ejemplos:**
* `feat: add dockerfile for deployment`
* `chore: update project name to prueba-cli-v1`
* `fix: resolve connection timeout`

---

## 3. Comandos Útiles para Corregir

**Si el commit es inválido:**
```bash
git commit --amend -m "tipo: descripción correcta"
git push --force-with-lease
