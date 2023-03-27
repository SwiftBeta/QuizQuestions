# 👋 ¡QUIZ de Swift, SwiftUI, Apple, etc!
[![Youtube Views](https://img.shields.io/youtube/channel/views/UC2MAP8k0bzwq_OAA_zQw27A?style=social)](https://twitter.com/swiftbeta)
[![YouTube Channel Subscribers](https://img.shields.io/youtube/channel/subscribers/UC2MAP8k0bzwq_OAA_zQw27A?style=social)](https://youtube.com/swiftbeta?sub_confirmation=1)
![GitHub Followers](https://img.shields.io/github/followers/swiftbeta?style=social)

He creado una web con VAPOR llamada [swiftbeta.herokuapp.com](https://swiftbeta.herokuapp.com) para practicar el conocimiento que tenemos sobre Swift, SwiftUI, Xcode, y preguntas del entorno de Apple.

1. Cada semana aparecerán nuevas preguntas (el proceso está automatizado)
2. Las preguntas son generadas por ChatGPT

<img width="1512" alt="Ejemplo del Quiz de SwiftBeta con preguntas de Swift, SwiftUI, Xcode, UIKit, etc" src="https://user-images.githubusercontent.com/74316958/222982294-14737006-ca3f-46f7-af86-5c612edf5ed0.png">

## ¿CÓMO FUNCIONA?
- La web está deployada en Heroku. 
- El framework que he usado es VAPOR (creada en Swift, HTML y Bootstrap)
- La web se nutre de los datos de este repositorio. Accede al `current.json` y `archive/weeks.json`.
- Uso AWS lambda con un cron que se ejecuta cada domingo:

## FEEDBACK
- Si ves algún bug, puedes comunicarlo en nuestra comunidad de Discord https://www.swiftbeta.com/discord
- Mencióname en un Tweet
