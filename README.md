# Guía de Nomenclatura del Proyecto

Este repositorio tiene validaciones automáticas de CI. Si no se sigue el formato exacto, los despliegues fallarán.

---

## 1. Nombre de las Ramas (Branches)
El pipeline valida que la rama comience obligatoriamente con un número seguido de un guion.

* **Regla:** `NUMERO-descripcion-en-minusculas`
* **Regex:** `^[0-9]+-[a-z0-9-]+$`

| Estado | Ejemplo |
| :--- | :--- |
| Correcto | `1234-setup-docker` |
| Correcto | `42-fix-readme` |
| Incorrecto | `feat/readme-added` |
| Incorrecto | `1234_Tarea_Nueva` |

---

## 2. Mensajes de Commit
Al igual que las ramas, cada commit debe estar vinculado a un número de tarea.

* **Regla:** `NUMERO-descripcion del cambio`
* **Regex:** `^[0-9]+-.+`

| Estado | Ejemplo |
| :--- | :--- |
| Correcto | `1234-readme pipelines explained` |
| Correcto | `101-corrigiendo error de build` |
| Incorrecto | `feat: Readme pipelines explained` |
| Incorrecto | `update project name` |

---

## 3. Cómo solucionar errores de validación

Si tu pipeline falla por **Branch invalida**:
```bash
git branch -m 1234-nombre-correcto
git push origin -u 1234-nombre-correcto
git push origin --delete nombre-viejo
