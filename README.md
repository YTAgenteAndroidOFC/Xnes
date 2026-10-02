# Xnes

Emulador de SNES minimalista para Android. Kotlin + Jetpack Compose (Material You), frontend libretro em C++ (JNI) e core snes9x.
Você importa a sua própria ROM (.sfc / .smc) e ela fica na biblioteca do app.

## Como compilar

1. Baixe o core: `bash fetch_core.sh` (cria `app/src/main/jniLibs/arm64-v8a/libsnes9x_libretro_android.so`).
   Sem rede, baixe `snes9x_libretro_android.so` (arm64-v8a) do buildbot do libretro e copie para essa pasta com o nome `libsnes9x_libretro_android.so`.
2. Abra a pasta no Android Studio (precisa do NDK e do CMake 3.22.1, ele oferece instalar) e rode **Build > Build APK**.
   Se o Android Studio reclamar do wrapper do Gradle, use o Gradle 8.9 instalado ou rode `gradle wrapper --gradle-version 8.9`.
3. Pelo GitHub: suba o projeto e rode a ação **Build APK** (`.github/workflows/build.yml`). Ela baixa o core e gera o APK sozinha.

## Recursos

- Biblioteca de jogos, importação de ROM pelo botão +
- Controles na tela com multitoque, vibração, tamanho e opacidade ajustáveis
- Menu **Editar controles**: arraste cada botão; o layout é salvo separado para retrato e paisagem
- Controles Bluetooth/USB
- 3 slots de estado salvo e save da cartucha (SRAM) automático
- Pausa automática ao sair do app

## Observações

- O Xnes não inclui nenhuma ROM. Use apenas jogos que você tem direito de usar.
- O snes9x tem licença própria de uso não comercial. Confira antes de distribuir o app.
- Para trocar de core, coloque outro `lib*libretro*.so` em `jniLibs/arm64-v8a`.
