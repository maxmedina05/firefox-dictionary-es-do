# firefox-dictionary-es-do

Corrector ortográfico de **español de la República Dominicana** (`es-DO`) para Firefox.

*Spell-check dictionary for Dominican Spanish (`es-DO`) for Firefox.*

Es el diccionario `es_DO` del proyecto [RLA-ES](https://github.com/sbosio/rla-es) (el mismo que usa
LibreOffice), más una lista propia de palabras dominicanas que aún no están en RLA-ES:
*guagua*, *motoconcho*, *tíguere*, *colmadón*, *dembowsero*, etc.

## Instalar

<!-- TODO: enlace a addons.mozilla.org cuando esté publicado -->

Luego, en cualquier campo de texto: clic derecho → **Idiomas** → **Español (República Dominicana)**.

## Añadir palabras

Edita [`extra-words.txt`](extra-words.txt) y abre un pull request. Una palabra por línea, con banderas opcionales:

```
guaguero/GS     # G = forma femenina (guaguera), S = plurales
motoconcho/S
```

Las palabras que ya existan en RLA-ES no hacen falta. Si una palabra es de uso general, considera
proponerla también en [RLA-ES](https://github.com/sbosio/rla-es) para que la reciban todos.

## Construir

Requiere `sh`, `zip` y `node`.

```bash
./build.sh                   # une upstream/es-DO.dic + extra-words.txt -> dist/es-DO-<versión>.xpi
npx web-ext lint -s src      # validar (después de construir)
```

`src/dictionaries/es-DO.dic` es generado: no lo edites a mano.

## Licencia y créditos

El diccionario base es obra del proyecto [RLA-ES](https://github.com/sbosio/rla-es) (Santiago Bosio y
colaboradores), distribuido bajo GPLv3+, LGPLv3+ o MPL 1.1+ a elección. Este paquete elige
[MPL 2.0](https://mozilla.org/MPL/2.0/); las palabras añadidas en `extra-words.txt` van bajo los mismos términos.
Los textos de licencia originales están en `src/dictionaries/`.
