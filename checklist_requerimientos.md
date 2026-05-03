# Checklist de Requerimientos: Cerradura VHDL

A continuación se presenta un análisis de los requerimientos extraídos del archivo `requerimientos.md` contrastados con la implementación actual en `top_cerradura.vhd` y sus componentes.

## ✅ Funcionalidades Implementadas (Elaboradas)
- [x] **Ingreso de clave numérica mediante pulsadores:** Se implementa a través del `shift_register` que toma entradas de 4 bits (`Din`) en 4 ciclos para conformar una clave de 16 bits.
- [x] **Clave de al menos 4 dígitos:** Cumplido con la captura de 4 dígitos hexadecimales o BCD.
- [x] **Validación de la clave:** Implementado mediante el componente `validacion` (`clave_ok`).
- [x] **Contador de intentos fallidos:** Implementado en el componente `contador_intentos`, el cual detecta los fallos de acceso.
- [x] **Bloqueo y activación de alarma visual/sonora:** Se enciende `LED_alarma` tras agotar los intentos.
- [x] **Desbloqueo temporal programado:** Implementado en el componente `temporizador_open` con una duración predefinida.
- [x] **Retorno automático al inicio:** Gestionado por el bloque `control_estado` que administra los cambios de estado (S0, S1).
- [x] **Establecer franjas horarias de acceso:** Hay un contador simulado o generador (`count18O`) y el componente `validacion` emite una señal `horario_ok`.
- [x] **Activar/desactivar pestillo:** Controlado de forma lógica por la salida del estado que habilita el acceso.
- [x] **Mostrar el Estado del sistema:** El componente `estado_sist` utiliza `Disp0`, `Disp1`, `Disp2` y `Disp3` para mostrar los estados (IDLE, ERR, OPEN, ALR).

## ❌ Funcionalidades Faltantes (No elaboradas o incompletas)
- [ ] **Monitorear el estado de la puerta:** En el `top_cerradura` no se visualizan entradas de sensores que detecten físicamente si la puerta está abierta o cerrada (por ejemplo, un sensor magnético).
- [ ] **Control y monitorización total de los accesos / Dar de alta usuarios / Copias de llaves:** La clave aparenta estar fijada (hardcoded) en la lógica de `validacion`. No hay un módulo visible para programar, registrar (logs) o añadir nuevos usuarios dinámicamente.
- [ ] **Mostrar conteo regresivo de desbloqueo o alarma:** Los 4 displays de 7 segmentos están ocupados por `estado_sist` para mostrar los mensajes de texto. No hay un ruteo para mostrar un número de cuenta regresiva.
- [ ] **Mostrar dígitos ingresados:** Similar al punto anterior, los displays muestran estados fijos y no los valores que el usuario va tecleando (`Din`).

## ⚠️ Aspectos a revisar
- **Máximo de 3 intentos:** El componente existe, pero sería ideal confirmar internamente en `contador_intentos.vhd` si el límite es exactamente 3 y si se bloquea correctamente según las especificaciones.
- **Evento de Intrusión:** La alarma salta por intentos fallidos, pero no hay un pin de "sensor de intrusión" (forzado de puerta) dedicado.
