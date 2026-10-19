# SRB2 en español (Port para Android v2.2.15)

Traducción al español de Sonic Robo Blast 2 hecha directamente en el código C del juego, adaptada y compilada para dispositivos Android sobre la versión 2.2.15.

Los textos están integrados nativamente en el motor (dentro del binario nativo `libsrb2.so`), no en un addon de Lua o SOC. Por eso se puede entrar a servidores vanilla sin que el juego pida cargar archivos extra. Además incluye controles táctiles virtuales en pantalla, renderizado por hardware mediante OpenGL ES (gl4es) y el addon gráfico con fuentes acentuadas (`srb2_spanish_gfx.pk3`) empaquetado y cargado automáticamente de fábrica.

## Qué está traducido

- Menús: principal, video, audio, controles, partidas guardadas, estadísticas y Caja de Pandora.
- HUD y partida: puntos, tiempo, anillos, mensajes en pantalla, modo espectador y tiempo extra.
- Nombres de las 66 zonas vanilla y de las etapas especiales, con sus acentos (*Cañón Árido*, *Montaña Gélida*, *Volcán*...).
- Tutorial completo: las 51 páginas de diálogo de Amy Rose y todos los carteles del mapa.
- Los 7 personajes vanilla: descripciones, habilidades y consejos.
- Intro completa (las 16 páginas), créditos y las frases al salir del juego.
- Tildes, eñes y signos en las fuentes LTFNT y STCFN (cargadas automáticamente con el addon de gráficos incluido en la APK).

Los valores de las variables de consola (On/Off, Yes/No) se dejan en inglés a propósito.

## Instalación en Android

Descarga el APK desde [Releases](https://github.com/trulydza/SRB2-Spanish-Recomp-Android/releases):

- `SRB2_Spanish_Recomp_v1.3.1_Android.apk`

### Pasos:

1. **Instalar el APK**: descárgalo en tu dispositivo Android e instálalo (permite la instalación de aplicaciones de orígenes desconocidos si tu navegador o gestor de archivos te lo solicita).
2. **Primer inicio**: abre la aplicación una vez. Esto creará la estructura de directorios necesaria en tu almacenamiento (`/sdcard/SRB2/` o `/storage/emulated/0/SRB2/`) e instalará los archivos de configuración y gráficos en español.
3. **Permiso de almacenamiento**: concede el permiso de acceso a todos los archivos (`MANAGE_EXTERNAL_STORAGE`) cuando el sistema lo pida, para que la app pueda guardar tu progreso, partidas y configuraciones.
4. **Copiar los archivos base del juego**: copia los 4 archivos de datos originales de la versión 2.2.15 de SRB2 dentro de la carpeta `/sdcard/SRB2/`:
   - `srb2.pk3`
   - `zones.pk3`
   - `characters.pk3`
   - `music.pk3`

*(Nota: por motivos legales de derechos de autor de SEGA y Sonic Team Junior, estos 4 archivos de assets comerciales no se redistribuyen empaquetados y se obtienen de una instalación de SRB2 de PC o de su web oficial).*

5. **¡Listo para jugar!**: abre de nuevo el juego y disfruta de Sonic Robo Blast 2 completamente en español en tu móvil o tablet.

## Ajustes y Controles Táctiles

- **Estilo de juego optimizado**: configurado de fábrica con controles en modo **Manual** y parámetros de cámara adaptados (`cam_dist 256`, `cam_height 60`) para mayor visibilidad con mandos táctiles.
- **Tasa de refresco**: tasa de fotogramas sin límite artificial (`fpscap Unlimited`) para pantallas móviles de 90 Hz y 120 Hz, con medidor discreto de FPS activado (`showfps Compact`).
- **Addons y mods**: puedes agregar addons de la comunidad (`.pk3` y `.wad`) copiándolos a la carpeta `/sdcard/SRB2/addons/`.

## Compilar desde el código fuente

### Requisitos:
- Android SDK (Platform 34 o 36)
- Android NDK (r25c o superior)
- CMake 3.22.1
- JDK 17

### Pasos de compilación:
```bash
# 1. Clonar el repositorio
git clone https://github.com/trulydza/SRB2-Spanish-Recomp-Android.git
cd SRB2-Spanish-Recomp-Android/android-port

# 2. Descargar dependencias nativas (SDL2, SDL2_mixer, curl, mbedTLS)
chmod +x setup_deps.sh
./setup_deps.sh

# 3. Compilar APK Release
./gradlew assembleRelease
```
El APK resultante se genera en `android-port/app/build/outputs/apk/release/app-release.apk`.

## Créditos

- Traducción y adaptación: Daza ([@trulydza](https://github.com/trulydza))
- Port Android de referencia: thegreatbbd94-ux ([thegreatbbd94-ux/SRB2-Android-Port](https://github.com/thegreatbbd94-ux/SRB2-Android-Port)) y SRB2-Mobile
- Juego base y motor: Sonic Team Junior ([STJr/SRB2](https://github.com/STJr/SRB2))
- Capa gráfica OpenGL ES: gl4es por ptitSeb

Licencia GPL-2.0, igual que el juego original.
