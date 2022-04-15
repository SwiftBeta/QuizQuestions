# 👋 ¡QUIZ de Swift, SwiftUI, Apple, etc!

He creado una web con VAPOR llamada [swiftbeta.herokuapp.com]() para practicar el conocimiento que tenemos sobre Swift, SwiftUI, Xcode, y preguntas del entorno de Apple.

1. Cada semana aparecerán nuevas preguntas (el proceso está automatizado)
2. Puedes colaborar y añadir tus propias preguntas en el fichero `next.json`. Lo único que hay que hacer es una Pull Request añadiendo:
     - La pregunta (o preguntas que quieres añadir)
     - Las opciones como respuesta que quieres que aparezcan (puedes poner dos opciones como respuesta o ¡hasta 4!)
     - Es importante que añadas que respuesta (de todas las que has añadido en el punto anterior) es la correcta
     - [Más abajo](https://github.com/SwiftBeta/QuizQuestions#cómo-añadir-una-pregunta) lo explico todo al detalle
2. Puedes añadir tus propias preguntas en el fichero `next.json`. Lo único que hay que hacer es una Pull Request: (añadiendo la preguntas, respuestas que quieres que aparezcanximo de , indicar qué opción es la correcta, etc). Más abajo está explico al detalle 
3. Al empezar una nueva semana, las preguntas se archivan para poder acceder siempre

<img width="949" alt="swiftbeta quiz" src="https://user-images.githubusercontent.com/74316958/163547612-688f28f4-d2b5-4596-83db-97c68e3d4ee1.png">

## ¿CÓMO AÑADIR UNA PREGUNTA?
Las preguntas introducidas en el fichero `next.json` aparecerán en la siguiente semana, este fichero sirve para acumular preguntas y cuando empiece la nueva semana el contenido de `next.json` pasará a `current.json`. 
De esta manera, todo el mundo puede abrir Pull Request y añadir la siguiente información:

```
{
  "data": [
     {
      "id": 0,
      "name": "El siguiente código muestra cómo realizar una petición HTTP en Swift (en un Playground). Pero hay un problema muy común",
      "answers": [
        {"id": "type_a", "value": "El código no compila"},
        {"id": "type_b", "value": "Falta llamar .resume() para que se realice la petición HTTP"},
        {"id": "type_c", "value": "No existe la API de iTunes"},
        {"id": "type_d", "value": "La constante urlSession debe ser una variable"}
      ],
      "gistURL": "https://gist.github.com/SwiftBeta/b943932859caa1c1411a2c0cf449646b.js",
      "correct": "type_b",
      "created_by": "SwiftBeta_"
    },
}
```

Campos obligatorios:
- `id` -> identificador de la pregunta. La primera pregunta de la semana siempre tendrá `id` 0, la segunda pregunta tendrá `id` 1, etc
- `name` -> pregunta que quieres crear
- `answers` -> array de respuestas que quieres mostrar, cada respuesta tiene un `id` y un `value`. Para seguir un convenio, el `id` deberá ser `type_a`, empezando siempre por orden alfabético
- `gistURL` -> URL del gist que quieres mostrar en la pregunta. Si no quieres añadir una URL, asigna el valor de `""`
- `correct` -> Especifica el `id` de la respuesta correcta a tu pregunta
- `created_by` -> Twitter del creador de la pregunta

## ¿Cómo Añadir una pregunta a continuación de la anterior?
Lo único que tienes que hacer es añadir los mismos campos a continuación de la anterior pregunta. Es importante que la nueva pregunta tenga el `id` incrementado. (Si la anterior pregunta tenía `id` 0, tu nueva pregunta tendrá `id` 1). 

```
{
  "data": [
     {
      "id": 0,
      "name": "El siguiente código muestra cómo realizar una petición HTTP en Swift (en un Playground). Pero hay un problema muy común",
      "answers": [
        {"id": "type_a", "value": "El código no compila"},
        {"id": "type_b", "value": "Falta llamar .resume() para que se realice la petición HTTP"},
        {"id": "type_c", "value": "No existe la API de iTunes"},
        {"id": "type_d", "value": "La constante urlSession debe ser una variable"}
      ],
      "gistURL": "https://gist.github.com/SwiftBeta/b943932859caa1c1411a2c0cf449646b.js",
      "correct": "type_b",
      "created_by": "SwiftBeta_"
    },
    {
      "id": 1,
      "name": "¿Cuándo se lanzó el primer iPhone?",
      "answers": [
        {"id": "type_a", "value": "29 de junio de 2009"},
        {"id": "type_b", "value": "11 de junio de 2008"},
        {"id": "type_c", "value": "29 de junio de 2007"},
        {"id": "type_d", "value": "10 de marzo de 2006"},
      ],
      "correct": "type_c",
      "created_by": "SwiftBeta_"
    },
}
```


## ¿CÓMO FUNCIONA?
- La web está deployada en Heroku. 
- El framework que he usado es VAPOR (creada en Swift, HTML y Bootstrap)
- La web se nutre de los datos de este repositorio. Accede al `current.json` y `archive/weeks.json`.
- Github Actions con un cron que se ejecuta cada lunes por la mañana:
     - Puedes echar un vistazo al script [aquí](https://github.com/SwiftBeta/QuizQuestions/blob/main/.github/prepare_new_week_script.sh)
     - El fichero `current.json` se archiva en `archive/week2.json` (cada semana se va incrementando y guardando en un nuevo fichero `week1.json`, `week2.json`, etc)
     - Las preguntas que se han añadido a `next.json` se copian a `current.json`
     - El script comitea para que la web pueda acceder a los nuevos datos de `current.json`

## NORMAS
- Solo se permiten preguntas sobre Apple
- No se permiten faltas de respeto
- No se puede promocionar contenido de ningún tipo
