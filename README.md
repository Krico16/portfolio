# 🖥️ Portfolio Terminal

Portfolio personal interactivo con diseño de terminal/consola de comandos. Una experiencia única que simula una interfaz de línea de comandos para mostrar proyectos, habilidades técnicas e información profesional.

## ✨ Características

- 🖥️ **Interfaz de Terminal Auténtica**: Diseño que simula una terminal real con efectos visuales
- ⚡ **Comandos Interactivos**: Sistema completo de comandos para navegar por el portfolio
- 🎨 **Efectos Visuales**: Cursor parpadeante, texto verde fosforescente, fuente monospace
- 📱 **Responsive**: Optimizado para dispositivos móviles y desktop
- 🐳 **Docker Ready**: Configuración completa para despliegue con Docker
- 🚀 **Astro + TypeScript**: Tecnologías modernas para máximo rendimiento

## 🎮 Comandos Disponibles

| Comando | Descripción |
|---------|-------------|
| `help` | Muestra todos los comandos disponibles |
| `about` | Información personal y profesional |
| `projects` | Lista de proyectos desarrollados |
| `skills` | Habilidades técnicas y herramientas |
| `contact` | Información de contacto |
| `clear` | Limpia la pantalla del terminal |
| `history` | Muestra el historial de comandos |
| `whoami` | Muestra el usuario actual |
| `pwd` | Muestra el directorio actual |

## 🚀 Estructura del Proyecto

```text
/
├── public/
│   └── favicon.svg
├── src/
│   ├── components/
│   │   └── Terminal.astro          # Componente principal del terminal
│   ├── data/
│   │   ├── portfolio.json          # Información personal
│   │   ├── projects.json           # Datos de proyectos
│   │   └── skills.json             # Habilidades técnicas
│   ├── layouts/
│   │   └── Layout.astro            # Layout principal
│   └── pages/
│       └── index.astro             # Página principal
├── Dockerfile                      # Imagen de producción
├── Dockerfile.dev                  # Imagen de desarrollo
├── docker-compose.yml              # Orquestación de contenedores
├── nginx.conf                      # Configuración del servidor web
└── package.json
```

## 🛠️ Desarrollo Local

### Requisitos
- Node.js 18+
- npm o bun

### Instalación

```bash
# Clonar el repositorio
git clone <tu-repositorio>
cd krico-portfolio

# Instalar dependencias
npm install

# Iniciar servidor de desarrollo
npm run dev
```

El sitio estará disponible en `http://localhost:4321`

### Comandos de Desarrollo

| Comando | Acción |
|---------|--------|
| `npm run dev` | Inicia el servidor de desarrollo |
| `npm run build` | Construye la aplicación para producción |
| `npm run preview` | Previsualiza la build localmente |
| `npm run check` | Verifica tipos de TypeScript |

## 🐳 Despliegue con Docker

### Producción

```bash
# Construir y ejecutar en producción
npm run docker:up

# O manualmente
docker-compose up -d
```

La aplicación estará disponible en `http://localhost:3000`

### Desarrollo con Docker

```bash
# Ejecutar en modo desarrollo
npm run docker:dev

# O manualmente
docker-compose --profile dev up
```

### Comandos Docker Útiles

| Comando | Acción |
|---------|--------|
| `npm run docker:build` | Construye las imágenes |
| `npm run docker:up` | Inicia los contenedores en producción |
| `npm run docker:down` | Detiene los contenedores |
| `npm run docker:dev` | Inicia en modo desarrollo |
| `npm run docker:logs` | Muestra los logs |

## 📝 Personalización

### Datos Personales
Edita los archivos en `src/data/` para personalizar tu información:

- **`portfolio.json`**: Información personal, contacto y bio
- **`projects.json`**: Lista de proyectos con descripciones y tecnologías
- **`skills.json`**: Habilidades técnicas organizadas por categorías

### Estilos
Los estilos del terminal están en `src/components/Terminal.astro`. Puedes personalizar:

- Colores del terminal
- Fuentes y tamaños
- Efectos visuales
- Responsive design

### Comandos
Agregar nuevos comandos editando el objeto `commands` en `Terminal.astro`:

```javascript
const commands = {
  micomando: {
    description: 'Descripción del comando',
    usage: 'micomando [argumentos]',
    action: (args) => {
      // Lógica del comando
    }
  }
};
```

## 🚀 Despliegue en Producción

### Vercel
```bash
npm i -g vercel
vercel
```

### Netlify
```bash
npm run build
# Subir carpeta dist/
```

### Servidor Propio
```bash
# Usando Docker
docker-compose up -d

# O construir manualmente
npm run build
# Servir carpeta dist/ con nginx/apache
```

## 🎨 Tecnologías Utilizadas

- **[Astro](https://astro.build/)** - Framework web moderno
- **[TypeScript](https://www.typescriptlang.org/)** - Tipado estático
- **[Docker](https://www.docker.com/)** - Contenedorización
- **[Nginx](https://nginx.org/)** - Servidor web
- **CSS3** - Estilos y animaciones
- **JavaScript ES6+** - Lógica del terminal

## 📄 Licencia

MIT License - ver el archivo [LICENSE](LICENSE) para más detalles.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📞 Contacto

- **Email**: tu@email.com
- **GitHub**: [tu-usuario](https://github.com/tu-usuario)
- **LinkedIn**: [tu-perfil](https://linkedin.com/in/tu-perfil)

---

⭐ ¡No olvides dar una estrella al proyecto si te gustó!
