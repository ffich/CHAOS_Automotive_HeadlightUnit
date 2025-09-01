# 🚘 CHAOS Automotive Headlight Unit (HLU)

This repository showcases a **practical automotive application** built on top of the [CHAOS RTOS](https://github.com/ffich/CHAOS).  
It is designed as a **Headlight Unit (HLU)**, one of the fundamental Electronic Control Units (ECUs) in a modern vehicle lighting system.  

The HLU is responsible for managing:
- **Main lamps and high beams** for road illumination,
- **Blinkers** for signaling vehicle maneuvers,
- **Follow Me Home (FMH)** functionality for safety and comfort after ignition off.

In a real car, the HLU does not operate in isolation. Instead, it communicates with other vehicle systems (e.g., the **Body Computer**) over the **CAN bus**, receiving driver commands and reporting status or diagnostics back.  
This repository replicates such a setup in a controlled environment using a **PIC32 Curiosity 2.0 board**, where low-level drivers (Timer, GPIO, CAN) are generated with **MPLAB Harmony**.  

By combining **CHAOS RTOS** with a **layered software architecture**, the project demonstrates how to structure an embedded automotive control unit with **real-time task scheduling, hardware abstraction, and modular application components**.  

---

## ✅ Basic Requirements

1. 💡 **Lamp Management**
   - Main lamp switch
   - High beam (Bright lamp)

2. 🔁 **Blinker Management**
   - Turn indicators (left/right)

3. ⏱️ **Follow Me Home (FMH)**
   - Keep headlights ON after ignition OFF with configurable timeout:
     - Disabled, **10s**, **30s**, **60s**

4. 🚌 **CAN Communication**
   - Messages and signals defined in the DBC:
     - [`20_Docs/10_Dbc`](https://github.com/ffich/CHAOS_Automotive_HeadlightUnit/tree/main/20_Docs/10_Dbc)

---

## 🏗️ Software Architecture

The software adopts a **layered architecture**:

- ⚡ **CHAOS RTOS**
  - Deterministic task scheduling, timers, lightweight RT primitives.
- 🧰 **Service Layer**
  - Hardware abstraction for **CAN**, **I/O**, **Timers** (wrapping MPLAB Harmony drivers).
  - Stable, testable APIs for application components.
- 🧩 **Application Components**
  - **Lamp Manager** — main/high beam control & status.
  - **Blinker Manager** — turn indicators, blink patterns, timing.
  - **Sys Manager** — system coordination, FMH timing/state, diagnostics.

---

## 🧪 Hardware & Tools
- 🧠 MCU/Board: PIC32 on Curiosity 2.0
- 🧩 Drivers: MPLAB Harmony (Timer, GPIO, CAN)
- 🧵 RTOS: CHAOS
- 📡 Bus: CAN (see DBC in 20_Docs/10_Dbc)

---

## 🛠️ Build & Run (High-Level)

- Open the project in MPLAB X with Harmony configured for the Curiosity 2.0 target.
- Ensure Harmony components for CAN, GPIO, Timer are generated and mapped to board pins.
- Build and flash
- Use a CAN tool aligned to the DBC to send commands and monitor status.

---

## ✨ Highlights

- Minimal, portable Service Layer on top of CHAOS.
- Clear separation of Lamp, Blinker, and System/FM H responsibilities.
- End-to-end CAN integration driven by a DBC for repeatable testing.

---

## 📜 License
Unless otherwise noted, this project is released under MIT.

---

## 🔗 Related
CHAOS RTOS: https://github.com/ffich/CHAOS
