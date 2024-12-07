#include "raylib.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int nivel_del_usuario = 0;
int contador_1 = 0;
int contador_2 = 0;
int contador_3 = 0;
int contador_4 = 0;
int contador_1_skin = 0;
int contador_2_skin = 0;
int contador_3_skin = 0;
int contador_4_skin = 0;
int cursor_final = 0;
bool cursorCambiado = false;
int tutorial = 0;

int verificador_de_pregunta_de_tutorial = 0;
Texture2D cursor;
Texture2D cursor1;
Texture2D cursor2;
Texture2D cursor3;
Texture2D cursor4;
Texture2D cursor5;
Texture2D cursor6;
Texture2D bloqueo_de_cursores;
// Declaración global de las texturas del tutorial
Texture2D Fondo_de_tutorial;
Texture2D Fondo_de_pregunta_tutorial;
Texture2D fondo_de_inicio;
Texture2D Fondo_de_inicio_1;
Texture2D Fondo_de_inicio_2;
Texture2D Fondo_de_botones;
Texture2D Fondo_de_botones_1;
Texture2D Fondo_de_botones_2;
Texture2D Fondo_de_sumas;
Texture2D Fondo_de_sumas_l;
Texture2D Fondo_de_sumas_2;
Texture2D Fondo_de_restas;
Texture2D Fondo_de_restas_l;
Texture2D Fondo_de_restas_2;
Texture2D Fondo_de_multiplicacion;
Texture2D Fondo_de_division;

const int ancho_pantalla = 1920;
const int alto_pantalla = 1080;
// click para mutear y desmutear
const int click_sonido_x_inicial = 1770;
const int click_sonido_x_final = 2060;
const int click_sonido_y_inicial = 10;
const int click_sonido_y_final = 140;
Texture2D sonido;
bool pause;
Music music;
Music respuesta_correcta;
Music respuesta_incorecta;

typedef enum
{
    MENU,
    GUARDARPARTIDA,
    SELECCION_DE_CURSOR,
    TUTORIAL,
    INICIO,
    BOTONES,
    SUMAS,
    RESTAS,
    MULTIPLICACION,
    DIVISON,
    CARGAR_PROGRESO,
    NIVELES,
    PREGUNTA_SI_QUIERE_TUTORIAL,
    SALIR,
    NIVEL1,
    ejercicio2_nivel1,
    ejercicio3_nivel1,
    ejercicio4_nivel1,
    ejercicio5_nivel1,
    NIVEL2,
    ejercicio2_nivel2,
    ejercicio3_nivel2,
    ejercicio4_nivel2,
    ejercicio5_nivel2,
    NIVEL3,
    ejercicio2_nivel3,
    ejercicio3_nivel3,
    ejercicio4_nivel3,
    ejercicio5_nivel3,
    NIVEL4,
    ejercicio2_nivel4,
    ejercicio3_nivel4,
    ejercicio4_nivel4,
    ejercicio5_nivel4

} Escena;

Escena escenaActual = MENU;
Escena escenaAnterior = MENU;

typedef struct
{
    Vector2 position;
    char symbol;
    Color color;
    float speed;
} Symbol;

void musica_mutear_desmutear();
void sonido_de_respuesta_correcta();
void sonido_de_respuesta_incorecta();
void Mostrarguardado();
void MostrarCargandoProgreso();
void guardarprogreso(char *nombre_archivo, int nivel_del_usuario, int nivel1, int nivel1_skin, int nivel2, int nivel2_skin, int nivel3, int nivel3_skin, int nivel4, int nivel4_skin, int cursor_final, int tutorial);
void cargarprogreso(char *nombre_archivo, int *nivel_del_usuario, int *nivel1, int *nivel1_skin, int *nivel2, int *nivel2_skin, int *nivel3, int *nivel3_skin, int *nivel4, int *nivel4_skin, int *cursor_final, int *tutorial);
void finalizar_juego();
void VerificarTeclaYVolverMenu();

void MenuOpciones(Escena *escenaActual, Escena *escenaAnterior);
void ClickAccion(float x_inicial, float x_final, float y_inicial, float y_final, void (*action)());
// GUARDAR PARTIDA
void GuardarPartida1();
void GuardarPartida2();
void GuardarPartida3();
void VolverMenu();
// SELECCIOANR CURSOR
void ClickAccionCursor(float x_inicial, float x_final, float y_inicial, float y_final, Texture2D nuevoCursor);
void DibujarCursorYDesbloqueo(Texture2D cursor, Texture2D bloqueo, float x1, float y1, float x2, float y2, int contador_skin, const char *mensaje, Texture2D cursor_destino);
void CargarCursores();
// TUTORIAL
void CargarTexturasTutorial();
void ManejarBotonConCandado(int tutorial, float x_inicial, float x_final, float y_inicial, float y_final, void (*accion)(), Texture2D texturaCandado, float x_candado, float y_candado);
void accionBotones();
void accionSumas();
void accionRestas();
void accionMultiplicacion();
void accionDivision();
void accionInicio();
void ManejarEscena(Escena *escenaActual, int escenaId, Texture2D *fondoActual, Texture2D fondoInicial, Texture2D fondoAlternativo1, Texture2D fondoAlternativo2, const char *rutaFondoReinicio, Texture2D cursor, void (*finalizarJuego)());
//
void CargarPartida(char *nombre_archivo, float x_inicial, float x_final, float y_inicial, float y_final);

int main(void)
{
    Image icono = LoadImage("resources/icono.png");

    InitWindow(ancho_pantalla, alto_pantalla, "FractionQuest");
    SetWindowIcon(icono);
    InitAudioDevice();
    SetTargetFPS(30);
    // CURSORES
    CargarCursores();
    // TUTORIAL
    CargarTexturasTutorial();

    sonido = LoadTexture("resources/sonido.png");
    Texture2D candados_de_niveles = LoadTexture("resources/candado.png");
    music = LoadMusicStream("resources/Nintendo 3DS Music - Mii Maker.mp3");
    respuesta_correcta = LoadMusicStream("resources/BIEN_MAL/respuesta_correcta.mp3");
    respuesta_incorecta = LoadMusicStream("resources/BIEN_MAL/respuesta_incorecta.mp3");
    //  MENU SALIDA NIVELES
    Texture2D Fondo_de_salida = LoadTexture("resources/fondodesalida.png");

    Texture2D Fondo_de_cargando = LoadTexture("resources/CARGANDO_INICIO_DE_JUEGO.png");
    Texture2D Fondo_de_perfiles_guardar = LoadTexture("resources/fondo_de_perfiles_guardar.png");
    Texture2D Fondo_de_perfiles_cargar = LoadTexture("resources/fondo_de_perfiles_cargar.png");

    Texture2D Fondo_de_niveles = LoadTexture("resources/niveles.png");
    Texture2D Fondo_de_finaldeljuego = LoadTexture("resources/final_del_juego.png");
    Texture2D Fondo_de_cursores = LoadTexture("resources/fondo_de_cursores.png");

    HideCursor();

    Texture2D Respuestas_Vacias1 = LoadTexture("resources/BIEN_MAL/vacio.png");
    Texture2D Respuestas_Vacias2 = LoadTexture("resources/BIEN_MAL/vacio.png");
    Texture2D Respuestas_Vacias3 = LoadTexture("resources/BIEN_MAL/vacio.png");
    Texture2D Respuestas_Vacias4 = LoadTexture("resources/BIEN_MAL/vacio.png");
    Texture2D Respuestas_Vacias5 = LoadTexture("resources/BIEN_MAL/vacio.png");
    Texture2D Respuesta_Correcta = LoadTexture("resources/BIEN_MAL/respuesta_buena.png");
    Texture2D Respuesta_Incorrecta = LoadTexture("resources/BIEN_MAL/respuesta_mala.png");
    // nivel 1
    Texture2D Fondo_1_1 = LoadTexture("resources/nivel1/nivel1_1.png");
    Texture2D Fondo_1_2 = LoadTexture("resources/nivel1/nivel1_2.png");
    Texture2D Fondo_1_3 = LoadTexture("resources/nivel1/nivel1_3.png");
    Texture2D Fondo_1_4 = LoadTexture("resources/nivel1/nivel1_4.png");
    Texture2D Fondo_1_5 = LoadTexture("resources/nivel1/nivel1_5.png");
    Texture2D Fondo_de_perdiste_1 = LoadTexture("resources/nivel1/Fondo_de_perdiste.png");
    Texture2D Fondo_de_ganaste_1 = LoadTexture("resources/nivel1/Fondo_de_ganaste.png");
    // nivel 2
    Texture2D Fondo_2_1 = LoadTexture("resources/nivel2/nivel2_1.png");
    Texture2D Fondo_2_2 = LoadTexture("resources/nivel2/nivel2_2.png");
    Texture2D Fondo_2_3 = LoadTexture("resources/nivel2/nivel2_3.png");
    Texture2D Fondo_2_4 = LoadTexture("resources/nivel2/nivel2_4.png");
    Texture2D Fondo_2_5 = LoadTexture("resources/nivel2/nivel2_5.png");
    Texture2D Fondo_de_perdiste_2 = LoadTexture("resources/nivel2/Fondo_de_perdiste_2.png");
    Texture2D Fondo_de_ganaste_2 = LoadTexture("resources/nivel2/Fondo_de_ganaste_2.png");
    // nivel 3
    Texture2D Fondo_3_1 = LoadTexture("resources/nivel3/nivel3_1.png");
    Texture2D Fondo_3_2 = LoadTexture("resources/nivel3/nivel3_2.png");
    Texture2D Fondo_3_3 = LoadTexture("resources/nivel3/nivel3_3.png");
    Texture2D Fondo_3_4 = LoadTexture("resources/nivel3/nivel3_4.png");
    Texture2D Fondo_3_5 = LoadTexture("resources/nivel3/nivel3_5.png");
    Texture2D Fondo_de_perdiste_3 = LoadTexture("resources/nivel3/Fondo_de_perdiste_3.png");
    Texture2D Fondo_de_ganaste_3 = LoadTexture("resources/nivel3/Fondo_de_ganaste_3.png");
    // nivel 4
    Texture2D Fondo_4_1 = LoadTexture("resources/nivel4/nivel4_1.png");
    Texture2D Fondo_4_2 = LoadTexture("resources/nivel4/nivel4_2.png");
    Texture2D Fondo_4_3 = LoadTexture("resources/nivel4/nivel4_3.png");
    Texture2D Fondo_4_4 = LoadTexture("resources/nivel4/nivel4_4.png");
    Texture2D Fondo_4_5 = LoadTexture("resources/nivel4/nivel4_5.png");
    Texture2D Fondo_de_perdiste_4 = LoadTexture("resources/nivel4/Fondo_de_perdiste_4.png");
    /////////////////////////////////////////////////////////////////////////////////////////////
    music.looping = true;
    respuesta_correcta.looping = true;
    respuesta_incorecta.looping = true;
    pause = false;

    PlayMusicStream(music);
    SetMusicVolume(music, 0.5); // Establecer el volumen al 50%
    // ==========      PANTALLA DE CARGA      ===============
    float contador_segundos = 0.0f;
    while (contador_segundos < 4.0f && !WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(BLACK);
        DrawTexture(Fondo_de_cargando, 0, 0, WHITE);
        DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
        EndDrawing();
        contador_segundos += GetFrameTime();
    }
    //
    while (!WindowShouldClose())
    {
        BeginDrawing();
        UpdateMusicStream(music);
        DrawTexture(sonido, 1770, 10, WHITE);
        switch (escenaActual)
        {
        case MENU:
        {
            while (escenaActual == MENU)
            {
                UpdateMusicStream(music);

                MenuOpciones(&escenaActual, &escenaAnterior);
            }
        }
        break;
        case GUARDARPARTIDA:
        {
            while (escenaActual == GUARDARPARTIDA)
            {
                ClearBackground(BLACK);
                DrawTexture(Fondo_de_perfiles_guardar, 0, 0, WHITE);
                UpdateMusicStream(music);
                DrawTexture(sonido, 1770, 10, WHITE);
                ClickAccion(230, 554, 550.2, 874.2, GuardarPartida1);
                ClickAccion(798, 1122, 550.2, 874.2, GuardarPartida2);
                ClickAccion(1366, 1690, 550.2, 874.2, GuardarPartida3);
                ClickAccion(21.3, 149.3, 24, 140.3, VolverMenu);
                VerificarTeclaYVolverMenu();
                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                finalizar_juego();
                EndDrawing();
            }
        }
        break;
        case SELECCION_DE_CURSOR:
        {
            while (escenaActual == SELECCION_DE_CURSOR)
            {
                ClearBackground(BLACK);
                DrawTexture(Fondo_de_cursores, 0, 0, WHITE);
                UpdateMusicStream(music);
                DrawTexture(sonido, 1770, 10, WHITE);
                ClickAccionCursor(202.5, 458.5, 72.9, 328.9, cursor1);
                // Usar la función para cada cursor y su desbloqueo
                DibujarCursorYDesbloqueo(cursor2, bloqueo_de_cursores, 647.8, 903.8, 72.9, 328.9, contador_1_skin, "Se desbloquea completando\n\n      el %100 del nivel 1", cursor2);
                DibujarCursorYDesbloqueo(cursor3, bloqueo_de_cursores, 202.5, 458.5, 412.1, 668.1, contador_2_skin, "Se desbloquea completando\n\n       el %100 del nivel 2", cursor3);
                DibujarCursorYDesbloqueo(cursor4, bloqueo_de_cursores, 647.8, 903.8, 412.1, 668.1, contador_3_skin, "Se desbloquea completando\n\n       el %100 del nivel 3", cursor4);
                DibujarCursorYDesbloqueo(cursor5, bloqueo_de_cursores, 202.5, 458.5, 751.1, 1007.1, contador_4_skin, "Se desbloquea completando\n\n       el %100 del nivel 4", cursor5);
                int cursor_final = contador_1_skin + contador_2_skin + contador_3_skin + contador_4_skin;
                if (cursor_final == 4)
                {
                    ClickAccionCursor(1301.9, 1558.9, 412, 668, cursor6);
                }
                else
                {
                    DrawTexture(bloqueo_de_cursores, 1302.8, 412, BLACK);
                    DrawText("Se desbloquea completando\n\n al %100 todos los niveles", 1296.8, 512, 20, WHITE);
                }
                VerificarTeclaYVolverMenu();
                ClickAccion(21.3, 149.3, 24, 140.3, VolverMenu);
                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                finalizar_juego();
                EndDrawing();
            }
        }
        break;
        case TUTORIAL:
        {
            while (escenaActual == TUTORIAL)
            {
                ClearBackground(BLACK);
                DrawTexture(Fondo_de_tutorial, 0, 0, WHITE);
                UpdateMusicStream(music);
                DrawTexture(sonido, 1770, 10, WHITE);
                // Botón Botones
                ClickAccion(139.5, 395.5, 378, 634, accionBotones);
                // Sumas
                ManejarBotonConCandado(tutorial, 1017.5, 1273.5, 378, 634, accionSumas, candados_de_niveles, 1079.5, 417.5);
                // Restas
                ManejarBotonConCandado(tutorial, 1456.5, 1712.5, 378, 634, accionRestas, candados_de_niveles, 1518.5, 397.6);
                // Multiplicación
                ManejarBotonConCandado(tutorial, 155.5, 411.5, 716, 932, accionMultiplicacion, candados_de_niveles, 201.3, 739.5);
                // División
                ManejarBotonConCandado(tutorial, 594.5, 850.5, 716, 932, accionDivision, candados_de_niveles, 640.3, 739.5);
                // Botón Inicio
                ClickAccion(578.5, 834.5, 378, 634, accionInicio);
                ClickAccion(21.3, 149.3, 24, 140.3, VolverMenu);
                VerificarTeclaYVolverMenu();
                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                finalizar_juego();
                EndDrawing();
            }
        }
        break;
        case INICIO:
            ManejarEscena(&escenaActual, INICIO, &fondo_de_inicio, Fondo_de_inicio_1, Fondo_de_inicio_2, Fondo_de_inicio_1, "resources/tutorial/inicio_1.png", cursor, finalizar_juego);
            break;
        case BOTONES:
            ManejarEscena(&escenaActual, BOTONES, &Fondo_de_botones, Fondo_de_botones_1, Fondo_de_botones_2, Fondo_de_botones_1, "resources/tutorial/botones_1.png", cursor, finalizar_juego);
            break;
        case SUMAS:
            ManejarEscena(&escenaActual, SUMAS, &Fondo_de_sumas, Fondo_de_sumas_l, Fondo_de_sumas_2, Fondo_de_sumas_l, "resources/tutorial/sumas_1.png", cursor, finalizar_juego);
            break;
        case RESTAS:
            ManejarEscena(&escenaActual, RESTAS, &Fondo_de_restas, Fondo_de_restas_l, Fondo_de_restas_2, Fondo_de_restas_l, "resources/tutorial/restas_1.png", cursor, finalizar_juego);
            break;
        case MULTIPLICACION:
            ManejarEscena(&escenaActual, MULTIPLICACION, &Fondo_de_multiplicacion, Fondo_de_multiplicacion, Fondo_de_multiplicacion, Fondo_de_multiplicacion, "resources/tutorial/multiplicacion_1.png", cursor, finalizar_juego);
            break;
        case DIVISON:
            ManejarEscena(&escenaActual, DIVISON, &Fondo_de_division, Fondo_de_division, Fondo_de_division, Fondo_de_division, "resources/tutorial/division_1.png", cursor, finalizar_juego);
            break;
        case CARGAR_PROGRESO:
        {

            while (escenaActual == CARGAR_PROGRESO)
            {
                ClearBackground(BLACK);
                DrawTexture(Fondo_de_perfiles_cargar, 0, 0, WHITE);
                UpdateMusicStream(music);
                DrawTexture(sonido, 1770, 10, WHITE);

                CargarPartida("partida1.txt", 230, 554, 550.2, 874.2);
                CargarPartida("partida2.txt", 798, 1122, 550.2, 874.2);
                CargarPartida("partida3.txt", 1366, 1690, 550.2, 874.2);

                // Usamos ClickAccion para manejar el clic en el botón Home
                ClickAccion(21.3, 149.3, 24, 140.3, VolverMenu);

                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }

                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                finalizar_juego();
                EndDrawing();
            }
        }
        break;
        case PREGUNTA_SI_QUIERE_TUTORIAL:
        {

            while (escenaActual == PREGUNTA_SI_QUIERE_TUTORIAL)
            {
                UpdateMusicStream(music);

                ClearBackground(BLUE);
                DrawTexture(Fondo_de_pregunta_tutorial, 0, 0, WHITE);

                UpdateMusicStream(music);
                DrawTexture(sonido, 1770, 10, BLACK);

                const int click_menudesalida_si_x_inicial = 680.9;   este no lo simplifique
                const int click_menudesalida_si_x_final = 875.9;
                const int click_menudesalida_si_y_inicial = 591.7;
                const int click_menudesalida_si_y_final = 792.1;

                const int click_menudesalida_no_x_inicial = 1037;
                const int click_menudesalida_no_x_final = 1232;
                const int click_menudesalida_no_y_inicial = 591.7;
                const int click_menudesalida_no_y_final = 787.7;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_menudesalida_si_x_inicial && mousePosition.x <= click_menudesalida_si_x_final &&
                        mousePosition.y >= click_menudesalida_si_y_inicial && mousePosition.y <= click_menudesalida_si_y_final)
                    {
                        escenaActual = TUTORIAL;
                        verificador_de_pregunta_de_tutorial = 1;
                    }
                    if (mousePosition.x >= click_menudesalida_no_x_inicial && mousePosition.x <= click_menudesalida_no_x_final &&
                        mousePosition.y >= click_menudesalida_no_y_inicial && mousePosition.y <= click_menudesalida_no_y_final)
                    {
                        escenaActual = NIVELES;
                        verificador_de_pregunta_de_tutorial = 1;
                    }
                }
                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                finalizar_juego();
                EndDrawing();
            }
            // Guardar el progreso actualizado
        }
        break;
        case NIVELES:
        {

            while (escenaActual == NIVELES)
            {
                ClearBackground(BLACK);
                DrawTexture(Fondo_de_niveles, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, WHITE);

                DrawText(TextFormat("%d/5", contador_1), (ancho_pantalla / 2) - 738, (alto_pantalla / 2) - 212, 50, WHITE);
                const int click_nivel1_x_inicial = 139.5;
                const int click_nivel1_x_final = 395.5;
                const int click_nivel1_y_inicial = 378;
                const int click_nivel1_y_final = 634;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_nivel1_x_inicial && mousePosition.x <= click_nivel1_x_final &&
                        mousePosition.y >= click_nivel1_y_inicial && mousePosition.y <= click_nivel1_y_final)
                    {
                        escenaActual = NIVEL1;
                    }
                }
                if (nivel_del_usuario >= 1)
                {
                    DrawText(TextFormat("%d/5", contador_2), (ancho_pantalla / 2) - 300, (alto_pantalla / 2) - 212, 50, WHITE);
                    const int click_nivel2_x_inicial = 578.5;
                    const int click_nivel2_x_final = 834.5;
                    const int click_nivel2_y_inicial = 378;
                    const int click_nivel2_y_final = 634;
                    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                    {
                        Vector2 mousePosition = GetMousePosition();
                        if (mousePosition.x >= click_nivel2_x_inicial && mousePosition.x <= click_nivel2_x_final &&
                            mousePosition.y >= click_nivel2_y_inicial && mousePosition.y <= click_nivel2_y_final)
                        {
                            escenaActual = NIVEL2;
                        }
                    }
                }
                else
                {
                    if (nivel_del_usuario == 0)
                    {
                        DrawText("Se des22222222222loquea completando\n\n      el %80 del nivel 1", 530, 289.4, 30, WHITE);
                    }
                    DrawTexture(candados_de_niveles, 626, 397.6, BLACK);
                }
                if (nivel_del_usuario >= 2)
                {
                    DrawText(TextFormat("%d/5", contador_3), (ancho_pantalla / 2) + 140, (alto_pantalla / 2) - 212, 50, WHITE);
                    const int click_nivel3_x_inicial = 1017.5;
                    const int click_nivel3_x_final = 1273.5;
                    const int click_nivel3_y_inicial = 378;
                    const int click_nivel3_y_final = 634;
                    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                    {
                        Vector2 mousePosition = GetMousePosition();
                        if (mousePosition.x >= click_nivel3_x_inicial && mousePosition.x <= click_nivel3_x_final &&
                            mousePosition.y >= click_nivel3_y_inicial && mousePosition.y <= click_nivel3_y_final)
                        {
                            escenaActual = NIVEL3;
                        }
                    }
                }
                else
                {
                    if (nivel_del_usuario == 1)
                    {
                        DrawText("Se desbloquea completando\n\n       el %80 del nivel 2", 930, 289.4, 30, WHITE);
                    }
                    DrawTexture(candados_de_niveles, 1065.5, 397.6, BLACK);
                }
                if (nivel_del_usuario >= 3)
                {
                    DrawText(TextFormat("%d/5", contador_4), (ancho_pantalla / 2) + 582, (alto_pantalla / 2) - 212, 50, WHITE);
                    const int click_nivel4_x_inicial = 1456.5;
                    const int click_nivel4_x_final = 1712.5;
                    const int click_nivel4_y_inicial = 378;
                    const int click_nivel4_y_final = 634;
                    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                    {
                        Vector2 mousePosition = GetMousePosition();
                        if (mousePosition.x >= click_nivel4_x_inicial && mousePosition.x <= click_nivel4_x_final &&
                            mousePosition.y >= click_nivel4_y_inicial && mousePosition.y <= click_nivel4_y_final)
                        {
                            escenaActual = NIVEL4;
                        }
                    }
                }
                else
                {
                    if (nivel_del_usuario == 2)
                    {
                        DrawText("Se desbloquea completando\n\n       el %80 del nivel 3", 1370, 289.4, 30, WHITE);
                    }
                    DrawTexture(candados_de_niveles, 1507.8, 397.6, BLACK);
                }

                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                const int click_home_x_inicial = 21.3;
                const int click_home_x_final = 149.3;
                const int click_home_y_inicial = 24;
                const int click_home_y_final = 140.3;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_home_x_inicial && mousePosition.x <= click_home_x_final &&
                        mousePosition.y >= click_home_y_inicial && mousePosition.y <= click_home_y_final)
                    {
                        escenaActual = MENU;
                    }
                }
                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);

                finalizar_juego();
                EndDrawing();
            }
        }
        break;
        case SALIR:
        {

            while (escenaActual == SALIR)
            {
                UpdateMusicStream(music);

                ClearBackground(BLUE);
                DrawTexture(Fondo_de_salida, 0, 0, WHITE);
                UpdateMusicStream(music);
                DrawTexture(sonido, 1770, 10, BLACK);

                const int click_menudesalida_si_x_inicial = 680.9;
                const int click_menudesalida_si_x_final = 875.9;
                const int click_menudesalida_si_y_inicial = 591.7;
                const int click_menudesalida_si_y_final = 792.1;

                const int click_menudesalida_no_x_inicial = 1037;
                const int click_menudesalida_no_x_final = 1232;
                const int click_menudesalida_no_y_inicial = 591.7;
                const int click_menudesalida_no_y_final = 787.7;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_menudesalida_si_x_inicial && mousePosition.x <= click_menudesalida_si_x_final &&
                        mousePosition.y >= click_menudesalida_si_y_inicial && mousePosition.y <= click_menudesalida_si_y_final)
                    {
                        CloseWindow(); // Cierra la ventana y finaliza el juego
                    }
                    if (mousePosition.x >= click_menudesalida_no_x_inicial && mousePosition.x <= click_menudesalida_no_x_final &&
                        mousePosition.y >= click_menudesalida_no_y_inicial && mousePosition.y <= click_menudesalida_no_y_final)
                    {
                        escenaActual = escenaAnterior;
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case NIVEL1:
        {

            contador_1 = 0;
            Respuestas_Vacias1 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias2 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias3 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias4 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias5 = LoadTexture("resources/BIEN_MAL/vacio.png");

            while (escenaActual == NIVEL1)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_1_1, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Correcta;
                        contador_1++;
                        escenaActual = ejercicio2_nivel1;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                }
                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_1), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                finalizar_juego();
                musica_mutear_desmutear();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio2_nivel1:
        {

            while (escenaActual == ejercicio2_nivel1)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_1_2, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_1), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias2 = Respuesta_Correcta;
                        contador_1++;
                        escenaActual = ejercicio3_nivel1;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }

                EndDrawing();
            }
        }
        break;
        case ejercicio3_nivel1:
        {
            while (escenaActual == ejercicio3_nivel1)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_1_3, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_1), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_2_1_x_inicial = 1266.3;
                const int click_nivel1_2_1_x_final = 1417.4;
                const int click_nivel1_2_1_y_inicial = 186.2;
                const int click_nivel1_2_1_y_final = 401.8;
                //=========
                const int click_nivel1_2_2_x_inicial = 1266.3;
                const int click_nivel1_2_2_x_final = 1417.4;
                const int click_nivel1_2_2_y_inicial = 433.6;
                const int click_nivel1_2_2_y_final = 649.2;
                //=========
                const int click_nivel1_2_3_x_inicial = 1266.3;
                const int click_nivel1_2_3_x_final = 1417.4;
                const int click_nivel1_2_3_y_inicial = 681;
                const int click_nivel1_2_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_2_1_x_inicial && mousePosition.x <= click_nivel1_2_1_x_final &&
                        mousePosition.y >= click_nivel1_2_1_y_inicial && mousePosition.y <= click_nivel1_2_1_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Correcta;
                        contador_1++;
                        escenaActual = ejercicio4_nivel1;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_2_2_x_inicial && mousePosition.x <= click_nivel1_2_2_x_final &&
                        mousePosition.y >= click_nivel1_2_2_y_inicial && mousePosition.y <= click_nivel1_2_2_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_3_x_inicial && mousePosition.x <= click_nivel1_2_3_x_final &&
                        mousePosition.y >= click_nivel1_2_3_y_inicial && mousePosition.y <= click_nivel1_2_3_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);

                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                EndDrawing();
            }
        }
        break;
        case ejercicio4_nivel1:
        {
            while (escenaActual == ejercicio4_nivel1)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_1_4, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_1), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_2_1_x_inicial = 1266.3;
                const int click_nivel1_2_1_x_final = 1417.4;
                const int click_nivel1_2_1_y_inicial = 186.2;
                const int click_nivel1_2_1_y_final = 401.8;
                //=========
                const int click_nivel1_2_2_x_inicial = 1266.3;
                const int click_nivel1_2_2_x_final = 1417.4;
                const int click_nivel1_2_2_y_inicial = 433.6;
                const int click_nivel1_2_2_y_final = 649.2;
                //=========
                const int click_nivel1_2_3_x_inicial = 1266.3;
                const int click_nivel1_2_3_x_final = 1417.4;
                const int click_nivel1_2_3_y_inicial = 681;
                const int click_nivel1_2_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_nivel1_2_1_x_inicial && mousePosition.x <= click_nivel1_2_1_x_final &&
                        mousePosition.y >= click_nivel1_2_1_y_inicial && mousePosition.y <= click_nivel1_2_1_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_2_x_inicial && mousePosition.x <= click_nivel1_2_2_x_final &&
                        mousePosition.y >= click_nivel1_2_2_y_inicial && mousePosition.y <= click_nivel1_2_2_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel1;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_3_x_inicial && mousePosition.x <= click_nivel1_2_3_x_final &&
                        mousePosition.y >= click_nivel1_2_3_y_inicial && mousePosition.y <= click_nivel1_2_3_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Correcta;
                        contador_1++;
                        escenaActual = ejercicio5_nivel1;
                        sonido_de_respuesta_correcta();
                    }
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);

                finalizar_juego();
                musica_mutear_desmutear();

                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                EndDrawing();
            }
        }
        break;
        case ejercicio5_nivel1:
        {
            int pasado = 0;
            while (escenaActual == ejercicio5_nivel1)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_1_5, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_2_1_x_inicial = 1266.3;
                const int click_nivel1_2_1_x_final = 1417.4;
                const int click_nivel1_2_1_y_inicial = 186.2;
                const int click_nivel1_2_1_y_final = 401.8;
                //=========
                const int click_nivel1_2_2_x_inicial = 1266.3;
                const int click_nivel1_2_2_x_final = 1417.4;
                const int click_nivel1_2_2_y_inicial = 433.6;
                const int click_nivel1_2_2_y_final = 649.2;
                //=========
                const int click_nivel1_2_3_x_inicial = 1266.3;
                const int click_nivel1_2_3_x_final = 1417.4;
                const int click_nivel1_2_3_y_inicial = 681;
                const int click_nivel1_2_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_nivel1_2_1_x_inicial && mousePosition.x <= click_nivel1_2_1_x_final &&
                        mousePosition.y >= click_nivel1_2_1_y_inicial && mousePosition.y <= click_nivel1_2_1_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Correcta;
                        contador_1++;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_2_2_x_inicial && mousePosition.x <= click_nivel1_2_2_x_final &&
                        mousePosition.y >= click_nivel1_2_2_y_inicial && mousePosition.y <= click_nivel1_2_2_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_3_x_inicial && mousePosition.x <= click_nivel1_2_3_x_final &&
                        mousePosition.y >= click_nivel1_2_3_y_inicial && mousePosition.y <= click_nivel1_2_3_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                }
                if (contador_1 == 5)
                {
                    pasado = 1;
                }
                if (contador_1 > 3)
                {
                    nivel_del_usuario = 1;
                }
                if (contador_1 == 5)
                {
                    contador_1_skin = 1;
                }
                if (pasado == 1)
                {
                    nivel_del_usuario = 5;
                    contador_1_skin = 1;
                }

                musica_mutear_desmutear();
                finalizar_juego();
                DrawText(TextFormat("%d/5", contador_1), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
            }

            sleep(1);
            if (contador_1 < 4)
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();

                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_perdiste_1, 0, 0, WHITE);
                        DrawTexture(Respuestas_Vacias1, 932.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias2, 1010, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias3, 1087.8, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias4, 1164.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias5, 1241.4, 322.1, WHITE);
                        DrawText(TextFormat("%d/5", contador_1), 1342, 330, 50, BLACK);
                    }
                    else
                    {
                        break;
                    }

                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            else
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();

                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_ganaste_1, 0, 0, WHITE);
                        DrawTexture(Respuestas_Vacias1, 932.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias2, 1010, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias3, 1087.8, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias4, 1164.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias5, 1241.4, 322.1, WHITE);
                        DrawText(TextFormat("%d/5", contador_1), 1342, 330, 50, BLACK);
                    }
                    else
                    {
                        break;
                    }

                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            // Guardar el progreso actualizado
        }
        break;
        case NIVEL2:
        {

            contador_2 = 0;
            Respuestas_Vacias1 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias2 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias3 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias4 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias5 = LoadTexture("resources/BIEN_MAL/vacio.png");

            while (escenaActual == NIVEL2)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_2_1, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Correcta;
                        contador_2++;
                        escenaActual = ejercicio2_nivel2;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                }
                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_2), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);

                finalizar_juego();
                musica_mutear_desmutear();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                EndDrawing();
            }
        }
        break;
        case ejercicio2_nivel2:
        {

            while (escenaActual == ejercicio2_nivel2)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_2_2, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_2), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias2 = Respuesta_Correcta;
                        contador_2++;
                        escenaActual = ejercicio3_nivel2;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio3_nivel2:
        {

            while (escenaActual == ejercicio3_nivel2)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_2_3, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_2), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias3 = Respuesta_Correcta;
                        contador_2++;
                        escenaActual = ejercicio4_nivel2;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio4_nivel2:
        {

            while (escenaActual == ejercicio4_nivel2)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_2_4, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_2), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Correcta;
                        contador_2++;
                        escenaActual = ejercicio5_nivel2;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel2;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio5_nivel2:
        {
            int pasado2 = 0;
            while (escenaActual == ejercicio5_nivel2)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_2_5, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_2_1_x_inicial = 1266.3;
                const int click_nivel1_2_1_x_final = 1417.4;
                const int click_nivel1_2_1_y_inicial = 186.2;
                const int click_nivel1_2_1_y_final = 401.8;
                //=========
                const int click_nivel1_2_2_x_inicial = 1266.3;
                const int click_nivel1_2_2_x_final = 1417.4;
                const int click_nivel1_2_2_y_inicial = 433.6;
                const int click_nivel1_2_2_y_final = 649.2;
                //=========
                const int click_nivel1_2_3_x_inicial = 1266.3;
                const int click_nivel1_2_3_x_final = 1417.4;
                const int click_nivel1_2_3_y_inicial = 681;
                const int click_nivel1_2_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_nivel1_2_1_x_inicial && mousePosition.x <= click_nivel1_2_1_x_final &&
                        mousePosition.y >= click_nivel1_2_1_y_inicial && mousePosition.y <= click_nivel1_2_1_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_2_x_inicial && mousePosition.x <= click_nivel1_2_2_x_final &&
                        mousePosition.y >= click_nivel1_2_2_y_inicial && mousePosition.y <= click_nivel1_2_2_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_3_x_inicial && mousePosition.x <= click_nivel1_2_3_x_final &&
                        mousePosition.y >= click_nivel1_2_3_y_inicial && mousePosition.y <= click_nivel1_2_3_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Correcta;
                        contador_2++;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_correcta();
                    }
                }
                if (contador_2 == 5)
                {
                    pasado2 = 1;
                }
                if (contador_2 > 3)
                {
                    nivel_del_usuario = 2;
                }
                if (contador_2 == 5)
                {
                    contador_2_skin = 1;
                }
                if (pasado2 == 1)
                {
                    nivel_del_usuario = 5;
                    contador_2_skin = 1;
                }
                musica_mutear_desmutear();
                finalizar_juego();
                DrawText(TextFormat("%d/5", contador_2), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
            }

            sleep(1);
            if (contador_2 < 4)
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();
                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_perdiste_2, 0, 0, WHITE);
                        DrawTexture(Respuestas_Vacias1, 932.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias2, 1010, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias3, 1087.8, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias4, 1164.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias5, 1241.4, 322.1, WHITE);
                        DrawText(TextFormat("%d/5", contador_2), 1342, 330, 50, BLACK);
                    }
                    else
                    {
                        break;
                    }

                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            else
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();

                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_ganaste_2, 0, 0, WHITE);
                        DrawTexture(Respuestas_Vacias1, 932.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias2, 1010, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias3, 1087.8, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias4, 1164.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias5, 1241.4, 322.1, WHITE);
                        DrawText(TextFormat("%d/5", contador_2), 1342, 330, 50, BLACK);
                    }
                    else
                    {
                        break;
                    }

                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            // Guardar el progreso actualizado
        }
        break;
        case NIVEL3:
        {

            contador_3 = 0;
            Respuestas_Vacias1 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias2 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias3 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias4 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias5 = LoadTexture("resources/BIEN_MAL/vacio.png");

            while (escenaActual == NIVEL3)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_3_1, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Correcta;
                        contador_3++;
                        escenaActual = ejercicio2_nivel3;
                        sonido_de_respuesta_correcta();
                    }
                }
                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_3), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                finalizar_juego();
                musica_mutear_desmutear();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio2_nivel3:
        {

            while (escenaActual == ejercicio2_nivel3)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_3_2, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_3), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Correcta;
                        contador_3++;
                        escenaActual = ejercicio3_nivel3;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio3_nivel3:
        {

            while (escenaActual == ejercicio3_nivel3)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_3_3, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_3), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Correcta;
                        contador_3++;
                        escenaActual = ejercicio4_nivel3;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio4_nivel3:
        {

            while (escenaActual == ejercicio4_nivel3)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_3_4, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_3), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel3;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Correcta;
                        contador_3++;
                        escenaActual = ejercicio5_nivel3;
                        sonido_de_respuesta_correcta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio5_nivel3:
        {
            int pasado3 = 0;
            while (escenaActual == ejercicio5_nivel3)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_3_5, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_2_1_x_inicial = 1266.3;
                const int click_nivel1_2_1_x_final = 1417.4;
                const int click_nivel1_2_1_y_inicial = 186.2;
                const int click_nivel1_2_1_y_final = 401.8;
                //=========
                const int click_nivel1_2_2_x_inicial = 1266.3;
                const int click_nivel1_2_2_x_final = 1417.4;
                const int click_nivel1_2_2_y_inicial = 433.6;
                const int click_nivel1_2_2_y_final = 649.2;
                //=========
                const int click_nivel1_2_3_x_inicial = 1266.3;
                const int click_nivel1_2_3_x_final = 1417.4;
                const int click_nivel1_2_3_y_inicial = 681;
                const int click_nivel1_2_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_nivel1_2_1_x_inicial && mousePosition.x <= click_nivel1_2_1_x_final &&
                        mousePosition.y >= click_nivel1_2_1_y_inicial && mousePosition.y <= click_nivel1_2_1_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_2_x_inicial && mousePosition.x <= click_nivel1_2_2_x_final &&
                        mousePosition.y >= click_nivel1_2_2_y_inicial && mousePosition.y <= click_nivel1_2_2_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Correcta;
                        contador_3++;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_2_3_x_inicial && mousePosition.x <= click_nivel1_2_3_x_final &&
                        mousePosition.y >= click_nivel1_2_3_y_inicial && mousePosition.y <= click_nivel1_2_3_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                }
                if (contador_3 == 5)
                {
                    pasado3 = 5;
                }
                if (contador_3 > 3)
                {
                    nivel_del_usuario = 3;
                }
                if (contador_3 == 5)
                {
                    contador_3_skin = 1;
                }
                if (pasado3 == 1)
                {
                    nivel_del_usuario = 5;
                    contador_3_skin = 1;
                }
                musica_mutear_desmutear();
                finalizar_juego();
                DrawText(TextFormat("%d/5", contador_3), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
            }

            sleep(1);
            if (contador_3 < 4)
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();
                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_perdiste_3, 0, 0, WHITE);
                        DrawTexture(Respuestas_Vacias1, 932.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias2, 1010, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias3, 1087.8, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias4, 1164.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias5, 1241.4, 322.1, WHITE);
                        DrawText(TextFormat("%d/5", contador_3), 1342, 330, 50, BLACK);
                    }
                    else
                    {
                        break;
                    }

                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            else
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();

                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_ganaste_3, 0, 0, WHITE);
                        DrawTexture(Respuestas_Vacias1, 932.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias2, 1010, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias3, 1087.8, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias4, 1164.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias5, 1241.4, 322.1, WHITE);
                        DrawText(TextFormat("%d/5", contador_3), 1342, 330, 50, BLACK);
                    }
                    else
                    {
                        break;
                    }

                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            // Guardar el progreso actualizado
        }
        break;
        case NIVEL4:
        {
            contador_4 = 0;
            Respuestas_Vacias1 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias2 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias3 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias4 = LoadTexture("resources/BIEN_MAL/vacio.png");
            Respuestas_Vacias5 = LoadTexture("resources/BIEN_MAL/vacio.png");

            while (escenaActual == NIVEL4)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_4_1, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Incorrecta;
                        escenaActual = ejercicio2_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias1 = Respuesta_Correcta;
                        contador_4++;
                        escenaActual = ejercicio2_nivel4;
                        sonido_de_respuesta_correcta();
                    }
                }
                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_4), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                finalizar_juego();
                musica_mutear_desmutear();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio2_nivel4:
        {

            while (escenaActual == ejercicio2_nivel4)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_4_2, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_4), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias2 = Respuesta_Correcta;
                        contador_4++;
                        escenaActual = ejercicio3_nivel4;
                        sonido_de_respuesta_correcta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias2 = Respuesta_Incorrecta;
                        escenaActual = ejercicio3_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio3_nivel4:
        {

            while (escenaActual == ejercicio3_nivel4)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_4_3, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_4), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias3 = Respuesta_Incorrecta;
                        escenaActual = ejercicio4_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias3 = Respuesta_Correcta;
                        contador_4++;
                        escenaActual = ejercicio4_nivel4;
                        sonido_de_respuesta_correcta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio4_nivel4:
        {

            while (escenaActual == ejercicio4_nivel4)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_4_4, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);
                DrawText(TextFormat("%d/5", contador_4), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                const int click_nivel1_1_1_x_inicial = 1266.3;
                const int click_nivel1_1_1_x_final = 1417.4;
                const int click_nivel1_1_1_y_inicial = 186.2;
                const int click_nivel1_1_1_y_final = 401.8;
                //=========
                const int click_nivel1_1_2_x_inicial = 1266.3;
                const int click_nivel1_1_2_x_final = 1417.4;
                const int click_nivel1_1_2_y_inicial = 433.6;
                const int click_nivel1_1_2_y_final = 649.2;
                //=========
                const int click_nivel1_1_3_x_inicial = 1266.3;
                const int click_nivel1_1_3_x_final = 1417.4;
                const int click_nivel1_1_3_y_inicial = 681;
                const int click_nivel1_1_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();

                    if (mousePosition.x >= click_nivel1_1_1_x_inicial && mousePosition.x <= click_nivel1_1_1_x_final &&
                        mousePosition.y >= click_nivel1_1_1_y_inicial && mousePosition.y <= click_nivel1_1_1_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_2_x_inicial && mousePosition.x <= click_nivel1_1_2_x_final &&
                        mousePosition.y >= click_nivel1_1_2_y_inicial && mousePosition.y <= click_nivel1_1_2_y_final)
                    {

                        Respuestas_Vacias4 = Respuesta_Incorrecta;
                        escenaActual = ejercicio5_nivel4;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_1_3_x_inicial && mousePosition.x <= click_nivel1_1_3_x_final &&
                        mousePosition.y >= click_nivel1_1_3_y_inicial && mousePosition.y <= click_nivel1_1_3_y_final)
                    {
                        Respuestas_Vacias4 = Respuesta_Correcta;
                        contador_4++;
                        escenaActual = ejercicio5_nivel4;
                        sonido_de_respuesta_correcta();
                    }
                }
                musica_mutear_desmutear();
                finalizar_juego();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
            }
        }
        break;
        case ejercicio5_nivel4:
        {
            int pasado4 = 0;
            while (escenaActual == ejercicio5_nivel4)
            {

                ClearBackground(BLUE);
                DrawTexture(Fondo_4_5, 0, 0, WHITE);
                UpdateMusicStream(music);

                DrawTexture(sonido, 1770, 10, BLACK);

                DrawTexture(Respuestas_Vacias1, (ancho_pantalla / 2) + 192, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias2, (ancho_pantalla / 2) + 270, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias3, (ancho_pantalla / 2) + 348, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias4, (ancho_pantalla / 2) + 426, (alto_pantalla / 2) - 435, WHITE);
                DrawTexture(Respuestas_Vacias5, (ancho_pantalla / 2) + 504, (alto_pantalla / 2) - 435, WHITE);

                const int click_nivel1_2_1_x_inicial = 1266.3;
                const int click_nivel1_2_1_x_final = 1417.4;
                const int click_nivel1_2_1_y_inicial = 186.2;
                const int click_nivel1_2_1_y_final = 401.8;
                //=========
                const int click_nivel1_2_2_x_inicial = 1266.3;
                const int click_nivel1_2_2_x_final = 1417.4;
                const int click_nivel1_2_2_y_inicial = 433.6;
                const int click_nivel1_2_2_y_final = 649.2;
                //=========
                const int click_nivel1_2_3_x_inicial = 1266.3;
                const int click_nivel1_2_3_x_final = 1417.4;
                const int click_nivel1_2_3_y_inicial = 681;
                const int click_nivel1_2_3_y_final = 896.6;
                if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
                {
                    Vector2 mousePosition = GetMousePosition();
                    if (mousePosition.x >= click_nivel1_2_1_x_inicial && mousePosition.x <= click_nivel1_2_1_x_final &&
                        mousePosition.y >= click_nivel1_2_1_y_inicial && mousePosition.y <= click_nivel1_2_1_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_2_x_inicial && mousePosition.x <= click_nivel1_2_2_x_final &&
                        mousePosition.y >= click_nivel1_2_2_y_inicial && mousePosition.y <= click_nivel1_2_2_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Incorrecta;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_incorecta();
                    }
                    if (mousePosition.x >= click_nivel1_2_3_x_inicial && mousePosition.x <= click_nivel1_2_3_x_final &&
                        mousePosition.y >= click_nivel1_2_3_y_inicial && mousePosition.y <= click_nivel1_2_3_y_final)
                    {
                        Respuestas_Vacias5 = Respuesta_Correcta;
                        contador_4++;
                        escenaActual = NIVELES;
                        sonido_de_respuesta_correcta();
                    }
                }
                if (contador_1 == 5)
                {
                    pasado4 = 1;
                }
                if (contador_4 > 3)
                {
                    nivel_del_usuario = 3;
                }
                if (contador_4 == 5)
                {
                    contador_4_skin = 1;
                }
                if (pasado4 == 1)
                {
                    nivel_del_usuario = 5;
                    contador_4_skin = 1;
                }

                musica_mutear_desmutear();
                finalizar_juego();
                DrawText(TextFormat("%d/5", contador_4), (ancho_pantalla / 2) + 577, (alto_pantalla / 2) - 425, 50, BLACK);

                DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                EndDrawing();
                if (IsKeyPressed(KEY_J))
                {
                    escenaActual = MENU;
                }
            }

            sleep(1);
            if (contador_4 < 4)
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();
                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_perdiste_4, 0, 0, WHITE);
                        DrawTexture(Respuestas_Vacias1, 932.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias2, 1010, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias3, 1087.8, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias4, 1164.6, 322.1, WHITE);
                        DrawTexture(Respuestas_Vacias5, 1241.4, 322.1, WHITE);
                        DrawText(TextFormat("%d/5", contador_4), 1342, 330, 50, BLACK);
                    }
                    else
                    {
                        break;
                    }

                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            else
            {
                double tiempoInicial = GetTime();
                while (!WindowShouldClose())
                {
                    double tiempoActual = GetTime();

                    BeginDrawing();
                    ClearBackground(BLACK);

                    if (tiempoActual - tiempoInicial <= 5.0)
                    {

                        ClearBackground(BLUE);
                        DrawTexture(Fondo_de_finaldeljuego, 0, 0, WHITE);
                    }
                    else
                    {
                        break;
                    }
                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
                    EndDrawing();
                }
            }
            // Guardar el progreso actualizado
        }
        break;
        }
        if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
        {
            Vector2 mousePosition = GetMousePosition();

            if (mousePosition.x >= click_sonido_x_inicial && mousePosition.x <= click_sonido_x_final &&
                mousePosition.y >= click_sonido_y_inicial && mousePosition.y <= click_sonido_y_final)
            {
                pause = !pause; // Cambia el estado de pausa al contrario de su estado actual

                if (pause) // Si el estado es pausa (true)
                {
                    PauseMusicStream(music); // Pausa la música

                    sonido = LoadTexture("resources/sonido_mute.png"); // Cambia el sonido a una versión silenciada
                }
                else // Si el estado es no pausa (false)
                {
                    ResumeMusicStream(music);                     // Reanuda la música
                    sonido = LoadTexture("resources/sonido.png"); // Cambia el sonido a su versión normal
                }
            }
        }
    }

    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
    EndDrawing();

    UnloadTexture(sonido);
    StopMusicStream(music);
    UnloadMusicStream(music);
    CloseAudioDevice();
    CloseWindow();

    return 0;
}

void musica_mutear_desmutear()
{
    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON) || IsKeyPressed(KEY_S))
    {
        Vector2 mousePosition = GetMousePosition();

        if (mousePosition.x >= click_sonido_x_inicial && mousePosition.x <= click_sonido_x_final &&
            mousePosition.y >= click_sonido_y_inicial && mousePosition.y <= click_sonido_y_final)
        {
            pause = !pause;

            if (pause)
            {
                PauseMusicStream(music);

                sonido = LoadTexture("resources/sonido_mute.png");
            }
            else
            {
                ResumeMusicStream(music);
                sonido = LoadTexture("resources/sonido.png");
            }
        }
        if (IsKeyPressed(KEY_S))
        {
            pause = !pause;

            if (pause)
            {
                PauseMusicStream(music);

                sonido = LoadTexture("resources/sonido_mute.png");
            }
            else // Si el estado es no pausa (false)
            {
                ResumeMusicStream(music);
                sonido = LoadTexture("resources/sonido.png");
            }
        }
    }
}
void sonido_de_respuesta_correcta()
{
    double tiempoInicial;
    tiempoInicial = GetTime();
    Texture2D fondo_bien = LoadTexture("resources/BIEN_MAL/fondo_bien.png");
    PlayMusicStream(respuesta_correcta);
    SetMusicVolume(respuesta_correcta, 0.3);
    while (!WindowShouldClose())
    {
        UpdateMusicStream(respuesta_correcta);

        double tiempoActual = GetTime();

        BeginDrawing();

        if (tiempoActual - tiempoInicial <= 1.0)
        {
            DrawTexture(fondo_bien, 0, 0, WHITE);
        }
        else
        {
            StopMusicStream(respuesta_correcta);

            break;
        }

        EndDrawing();
    }
}
void sonido_de_respuesta_incorecta()
{
    double tiempoInicial;
    tiempoInicial = GetTime();
    Texture2D fondo_mal = LoadTexture("resources/BIEN_MAL/fondo_mal.png");
    PlayMusicStream(respuesta_incorecta);
    SetMusicVolume(respuesta_incorecta, 0.3);
    while (!WindowShouldClose())
    {
        UpdateMusicStream(respuesta_incorecta);

        double tiempoActual = GetTime();

        BeginDrawing();

        if (tiempoActual - tiempoInicial <= 1.0)
        {
            DrawTexture(fondo_mal, 0, 0, WHITE);
        }
        else
        {
            StopMusicStream(respuesta_incorecta);

            break;
        }

        EndDrawing();
    }
}
void Mostrarguardado()
{
    double tiempoInicial;

    tiempoInicial = GetTime();

    Texture2D guardado = LoadTexture("resources/guardando.png");

    while (!WindowShouldClose())
    {
        double tiempoActual = GetTime();

        BeginDrawing();
        ClearBackground(BLACK);

        if (tiempoActual - tiempoInicial <= 1.0)
        {
            DrawTexture(guardado, 0, 0, WHITE);
        }
        else
        {
            break;
        }

        EndDrawing();
    }
}
void MostrarCargandoProgreso()
{
    double tiempoInicial;

    tiempoInicial = GetTime();

    Texture2D progreso = LoadTexture("resources/CARGANDO_PROGRESO.png");

    while (!WindowShouldClose())
    {
        double tiempoActual = GetTime();

        BeginDrawing();
        ClearBackground(BLACK);

        if (tiempoActual - tiempoInicial <= 1.0)
        {
            DrawTexture(progreso, 0, 0, WHITE);
        }
        else
        {
            break;
        }

        EndDrawing();
    }
}
void guardarprogreso(char *nombre_archivo, int nivel_del_usuario, int nivel1, int nivel1_skin, int nivel2, int nivel2_skin, int nivel3, int nivel3_skin, int nivel4, int nivel4_skin, int cursor_final, int tutorial)
{
    FILE *file = fopen(nombre_archivo, "w");

    if (file != NULL)
    {
        fprintf(file, "%d %d %d %d %d %d %d %d %d %d %d", nivel_del_usuario, nivel1, nivel1_skin, nivel2, nivel2_skin, nivel3, nivel3_skin, nivel4, nivel4_skin, cursor_final, tutorial);
        fclose(file);
    }
}
void cargarprogreso(char *nombre_archivo, int *nivel_del_usuario, int *nivel1, int *nivel1_skin, int *nivel2, int *nivel2_skin, int *nivel3, int *nivel3_skin, int *nivel4, int *nivel4_skin, int *cursor_final, int *tutorial)
{
    FILE *file = fopen(nombre_archivo, "r");

    if (file != NULL)
    {
        fscanf(file, "%d %d %d %d %d %d %d %d %d %d %d", nivel_del_usuario, nivel1, nivel1_skin, nivel2, nivel2_skin, nivel3, nivel3_skin, nivel4, nivel4_skin, cursor_final, tutorial);
        fclose(file);
    }
}
void finalizar_juego()
{
    if (IsKeyPressed(KEY_ESCAPE))
    {
        CloseWindow();
    }
}
void VerificarTeclaYVolverMenu()
{
    if (IsKeyPressed(KEY_J))
    {
        escenaActual = MENU;
    }
}

void MenuOpciones(Escena *escenaActual, Escena *escenaAnterior)
{
    UpdateMusicStream(music);

    Texture2D Fondo_de_menu = LoadTexture("resources/menu.png");
    Texture2D icono_para_skins_cursores = LoadTexture("resources/cursores/icono_para_skins_cursores.png");

    DrawTexture(Fondo_de_menu, 0, 0, WHITE);
    DrawTexture(sonido, 1770, 10, WHITE);

    if (IsKeyPressed(KEY_F11))
    {
        ToggleFullscreen();
    }

    // Definir las áreas de clic para las diferentes opciones del menú
    const int click_inicio_x_inicial = 556.1;
    const int click_inicio_x_final = 1339.7;
    const int click_inicio_y_inicial = 494.8;
    const int click_inicio_y_final = 594.5;
    const int click_guardar_x_inicial = 556.1;
    const int click_guardar_x_final = 1339.7;
    const int click_guardar_y_inicial = 376.1;
    const int click_guardar_y_final = 475.8;
    const int click_niveles_x_inicial = 556.1;
    const int click_niveles_x_final = 1339.7;
    const int click_niveles_y_inicial = 613.9;
    const int click_niveles_y_final = 713.6;
    const int click_CARGAR_PROGRESO_x_inicial = 556.1;
    const int click_CARGAR_PROGRESO_x_final = 1339.7;
    const int click_CARGAR_PROGRESO_y_inicial = 732.6;
    const int click_CARGAR_PROGRESO_y_final = 832.3;
    const int click_salir_x_inicial = 556.1;
    const int click_salir_x_final = 1339.7;
    const int click_salir_y_inicial = 851.3;
    const int click_salir_y_final = 951;
    const int click_cursor_x_inicial = 1766;
    const int click_cursor_x_final = 1894;
    const int click_cursor_y_inicial = 900;
    const int click_cursor_y_final = 1054;

    DrawTexture(icono_para_skins_cursores, 1680, 840, WHITE);

    musica_mutear_desmutear();

    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
    {
        Vector2 mousePosition = GetMousePosition();

        if (mousePosition.x >= click_inicio_x_inicial && mousePosition.x <= click_inicio_x_final &&
            mousePosition.y >= click_inicio_y_inicial && mousePosition.y <= click_inicio_y_final)
        {
            *escenaActual = TUTORIAL;
        }
        else if (mousePosition.x >= click_guardar_x_inicial && mousePosition.x <= click_guardar_x_final &&
                 mousePosition.y >= click_guardar_y_inicial && mousePosition.y <= click_guardar_y_final)
        {
            *escenaActual = GUARDARPARTIDA;
        }
        else if (mousePosition.x >= click_niveles_x_inicial && mousePosition.x <= click_niveles_x_final &&
                 mousePosition.y >= click_niveles_y_inicial && mousePosition.y <= click_niveles_y_final)
        {
            if (verificador_de_pregunta_de_tutorial == 0)
            {
                *escenaActual = PREGUNTA_SI_QUIERE_TUTORIAL;
            }
            else
            {
                *escenaActual = NIVELES;
            }
        }
        else if (mousePosition.x >= click_salir_x_inicial && mousePosition.x <= click_salir_x_final &&
                 mousePosition.y >= click_salir_y_inicial && mousePosition.y <= click_salir_y_final)
        {
            *escenaAnterior = *escenaActual;
            *escenaActual = SALIR;
        }
        else if (mousePosition.x >= click_CARGAR_PROGRESO_x_inicial && mousePosition.x <= click_CARGAR_PROGRESO_x_final &&
                 mousePosition.y >= click_CARGAR_PROGRESO_y_inicial && mousePosition.y <= click_CARGAR_PROGRESO_y_final)
        {
            *escenaActual = CARGAR_PROGRESO;
        }
        else if (mousePosition.x >= click_cursor_x_inicial && mousePosition.x <= click_cursor_x_final &&
                 mousePosition.y >= click_cursor_y_inicial && mousePosition.y <= click_cursor_y_final)
        {
            *escenaActual = SELECCION_DE_CURSOR;
        }
    }

    DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);
    finalizar_juego();
    EndDrawing();
}
void ClickAccion(float x_inicial, float x_final, float y_inicial, float y_final, void (*action)())
{
    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
    {
        Vector2 mousePosition = GetMousePosition();
        if (mousePosition.x >= x_inicial && mousePosition.x <= x_final &&
            mousePosition.y >= y_inicial && mousePosition.y <= y_final)
        {
            action();
        }
    }
}
con esta puedes poner las corrdenadas y en acciones creas una funcion y pones el purro nombre sin los (), pero solo funcion sin la funcion no tiene parametros 

void GuardarPartida1()
{
    guardarprogreso("partida1.txt", nivel_del_usuario, contador_1, contador_1_skin, contador_2, contador_2_skin, contador_3, contador_3_skin, contador_4, contador_4_skin, cursor_final, verificador_de_pregunta_de_tutorial);
    Mostrarguardado();
}

void GuardarPartida2()
{
    guardarprogreso("partida2.txt", nivel_del_usuario, contador_1, contador_1_skin, contador_2, contador_2_skin, contador_3, contador_3_skin, contador_4, contador_4_skin, cursor_final, verificador_de_pregunta_de_tutorial);
    Mostrarguardado();
}

void GuardarPartida3()
{
    guardarprogreso("partida3.txt", nivel_del_usuario, contador_1, contador_1_skin, contador_2, contador_2_skin, contador_3, contador_3_skin, contador_4, contador_4_skin, cursor_final, verificador_de_pregunta_de_tutorial);
    Mostrarguardado();
}

void VolverMenu()
{
    escenaActual = MENU;
}

void ClickAccionCursor(float x_inicial, float x_final, float y_inicial, float y_final, Texture2D nuevoCursor)
{
    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
    {
        Vector2 mousePosition = GetMousePosition();
        if (mousePosition.x >= x_inicial && mousePosition.x <= x_final &&
            mousePosition.y >= y_inicial && mousePosition.y <= y_final)
        {
            cursor = nuevoCursor;  // Asignamos el nuevo cursor
            cursorCambiado = true; // Marcamos que el cursor ha sido cambiado
        }
    }

    // Si el cursor ya fue cambiado, lo mantenemos hasta que ocurra otro clic
    if (cursorCambiado && !IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
    {
        cursorCambiado = false; // Reseteamos la bandera cuando se deja de presionar el mouse
    }
}

void DibujarCursorYDesbloqueo(Texture2D cursor, Texture2D bloqueo, float x1, float y1, float x2, float y2, int contador_skin, const char *mensaje, Texture2D cursor_destino)
{
    if (contador_skin == 1)
    {
        ClickAccionCursor(x1, y1, x2, y2, cursor_destino);
    }
    else
    {
        DrawTexture(bloqueo, x1, y1, BLACK);
        DrawText(mensaje, x1 - 5, y1 + 90, 20, WHITE);
    }
}

void CargarCursores()
{
    cursor = LoadTexture("resources/cursores/raton.png");
    cursor1 = LoadTexture("resources/cursores/raton.png");
    cursor2 = LoadTexture("resources/cursores/raton2.png");
    cursor3 = LoadTexture("resources/cursores/raton3.png");
    cursor4 = LoadTexture("resources/cursores/raton4.png");
    cursor5 = LoadTexture("resources/cursores/raton5.png");
    cursor6 = LoadTexture("resources/cursores/raton6.png");
    bloqueo_de_cursores = LoadTexture("resources/cursores/bloqueo_de_cursores.png");
}
void CargarTexturasTutorial()
{
    // Cargar las texturas del tutorial
    Fondo_de_tutorial = LoadTexture("resources/tutorial/tutorial.png");
    Fondo_de_pregunta_tutorial = LoadTexture("resources/tutorial/pregunta_de_tutorial.png");
    fondo_de_inicio = LoadTexture("resources/tutorial/inicio_1.png");
    Fondo_de_inicio_1 = LoadTexture("resources/tutorial/inicio_1.png");
    Fondo_de_inicio_2 = LoadTexture("resources/tutorial/inicio_2.png");
    Fondo_de_botones = LoadTexture("resources/tutorial/botones_2.png");
    Fondo_de_botones_1 = LoadTexture("resources/tutorial/botones_2.png");
    Fondo_de_botones_2 = LoadTexture("resources/tutorial/botones_1.png");
    Fondo_de_sumas = LoadTexture("resources/tutorial/sumas_1.png");
    Fondo_de_sumas_l = LoadTexture("resources/tutorial/sumas_1.png");
    Fondo_de_sumas_2 = LoadTexture("resources/tutorial/sumas_2.png");
    Fondo_de_restas = LoadTexture("resources/tutorial/restas_1.png");
    Fondo_de_restas_l = LoadTexture("resources/tutorial/restas_1.png");
    Fondo_de_restas_2 = LoadTexture("resources/tutorial/restas_2.png");
    Fondo_de_multiplicacion = LoadTexture("resources/tutorial/multiplicacion_1.png");
    Fondo_de_division = LoadTexture("resources/tutorial/division_1.png");
}

void ManejarBotonConCandado(int tutorial, float x_inicial, float x_final, float y_inicial, float y_final, void (*accion)(), Texture2D texturaCandado, float x_candado, float y_candado)
{
    if (tutorial == 1)
    {
        ClickAccion(x_inicial, x_final, y_inicial, y_final, accion);
    }
    else
    {
        DrawTexture(texturaCandado, x_candado, y_candado, BLACK);
    }
}

void accionBotones()
{
    escenaActual = BOTONES;
}

void accionSumas()
{
    escenaActual = SUMAS;
}

void accionRestas()
{
    escenaActual = RESTAS;
}

void accionMultiplicacion()
{
    escenaActual = MULTIPLICACION;
}

void accionDivision()
{
    escenaActual = DIVISON;
}
void accionInicio()
{
    escenaActual = INICIO;
    tutorial = 1;
    verificador_de_pregunta_de_tutorial = 1;
}

void ManejarEscena(Escena *escenaActual, int escenaId, Texture2D *fondoActual, Texture2D fondoInicial, Texture2D fondoAlternativo1, Texture2D fondoAlternativo2, const char *rutaFondoReinicio, Texture2D cursor, void (*finalizarJuego)())
{
    while (*escenaActual == escenaId)
    {
        ClearBackground(BLUE);
        DrawTexture(*fondoActual, 0, 0, WHITE);

        if (IsKeyPressed(KEY_RIGHT))
        {
            *fondoActual = fondoAlternativo1;
        }
        if (IsKeyPressed(KEY_LEFT))
        {
            *fondoActual = fondoAlternativo2;
        }

        finalizarJuego();

        if (IsKeyPressed(KEY_J))
        {
            *escenaActual = MENU;
        }

        DrawTexture(cursor, GetMouseX(), GetMouseY(), WHITE);

        // Manejo de clic en botón de salida
        const int clickMenudesalidaXInicial = 1742.6;
        const int clickMenudesalidaXFinal = 1880.8;
        const int clickMenudesalidaYInicial = 37;
        const int clickMenudesalidaYFinal = 165;

        if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
        {
            Vector2 mousePosition = GetMousePosition();
            if (mousePosition.x >= clickMenudesalidaXInicial && mousePosition.x <= clickMenudesalidaXFinal &&
                mousePosition.y >= clickMenudesalidaYInicial && mousePosition.y <= clickMenudesalidaYFinal)
            {
                *escenaActual = TUTORIAL;
            }
        }

        EndDrawing();
    }

    *fondoActual = LoadTexture(rutaFondoReinicio);
}

void CargarPartida(char *nombre_archivo, float x_inicial, float x_final, float y_inicial, float y_final)
{
    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
    {
        Vector2 mousePosition = GetMousePosition();
        if (mousePosition.x >= x_inicial && mousePosition.x <= x_final &&
            mousePosition.y >= y_inicial && mousePosition.y <= y_final)
        {
            cargarprogreso(nombre_archivo, &nivel_del_usuario, &contador_1, &contador_1_skin, &contador_2, &contador_2_skin, &contador_3, &contador_3_skin, &contador_4, &contador_4_skin, &cursor_final, &verificador_de_pregunta_de_tutorial);
            MostrarCargandoProgreso();
        }
    }
}
