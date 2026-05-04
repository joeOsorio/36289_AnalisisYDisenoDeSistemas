# Fase de Diseño - Ingeniería de Software Pragmática

## Objetivos del capítulo
Describir las actividades necesarias para diseñar la arquitectura del sistema, identificar los elementos con los que se construirá, cómo se estructurarán y preparar el Plan de pruebas de integración.

---

## 7.1 Fase de Diseño: objetivos, actividades y productos

### Objetivos
* Conocer en qué consiste el diseño del software para el trabajo en equipo.
* Definir la arquitectura al identificar y describir las partes que compondrán el software con sus relaciones.
* Establecer las clases con que se construirá cada parte, utilizando la vista estática (diagramas de clases) y la dinámica (diagramas de secuencia y de estados).
* Elaborar el Plan de pruebas de integración.

### Actividades y Productos por Objetivo

#### Objetivo 01: Conocer el proceso del diseño para el trabajo en equipo.
* **Actividades:**
  * A1.1 Entender los principios del diseño para trabajo en equipo.
  * A1.2 Decidir las tecnologías y el ambiente de implementación.
  * A1.3 Establecer el estándar de diseño.
* **Productos:**
  * Especificación del ambiente de implementación.
  * Estándar de documentación del diseño.

#### Objetivo 02: Definir la arquitectura del software.
* **Actividades:**
  * A2.1 Identificar la arquitectura del software.
  * A2.2 Hacer el diagrama de distribución.
* **Productos:**
  * Arquitectura con diagrama de paquetes.
  * Diagrama de distribución.

#### Objetivo 03: Diseñar los componentes principales del software a través de clases.
* **Actividades:**
  * A3.1 Identificar las clases importantes y relacionarlas a través de diagramas de clases (vista estática).
  * A3.2 Modelar la participación dinámica de dichas clases en la realización de los casos de uso con diagramas de secuencia.
  * A3.3 Modelar por medio de diagramas de estado la navegación en la interfaz de usuario.
* **Productos:**
  * Diagramas de clases.
  * Diagramas de secuencia.
  * Diagrama de estados.

#### Objetivo 04: Definir el orden de la integración de los componentes y su prueba.
* **Actividades:**
  * A4.1 Crear el Plan de pruebas de integración.
* **Productos:**
  * Plan de prueba de integración.

---

## 7.2 Diseño
> "El diseño de software es un proceso creativo para decidir cómo se construirá el producto de software" [Humphrey].

### 7.2.1 Principios del diseño
* **Diseñar para el cambio:** El diseño debe ser flexible para permitir cambios con facilidad.
* **Diseñar para facilitar el uso:** Diseñar pensando en los usuarios y sus aptitudes.
* **Diseñar para facilitar la prueba:** Identificar componentes como unidades que se puedan probar de forma aislada.
* **Diseñar para la reutilización:** Definir partes genéricas para mejorar la productividad futura.

### Medidas de calidad
* **Cohesión:** Grado de relación entre los elementos de un componente (debe ser alta).
* **Acoplamiento:** Grado de relación entre los componentes (debe ser bajo).

---

## 7.3 Arquitectura de software
Es el diseño del más alto nivel. Consiste en definir los componentes que formarán el software.

### Modelo de capas
1. **Capa de Presentación:** Elementos de interacción directa con el usuario (ventanas, informes).
2. **Capa Lógica de la aplicación:** Implementa las reglas del negocio.
3. **Capa de Almacenamiento:** Elementos que aseguran la persistencia de los datos (bases de datos, archivos).

### Diagrama de paquetes
Usa mecanismos de UML para organizar elementos. Las relaciones incluyen:
* Dependencia.
* Asociación.
* Generalización.
* Realización.

---

## 7.4 Diseño de clases
Identificación de los elementos de cada paquete. En el diseño orientado a objetos, estos elementos son clases.

### Estereotipos de clases
* **Clases de interfaz (IH):** Capa de Presentación.
* **Clases de control:** Capa Lógica.
* **Clases de entidad (BD):** Capa de Almacenamiento.
