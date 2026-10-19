# Time Motion Stopwatch Tracker

> A dedicated, high-precision Time and Motion study tracker engineered specifically for Customer Support (CS), Player Support, and CX operational workflows.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.4.0-green.svg)](https://github.com/isaacyew/TimeMotionST)

---

## 🎯 Why This App Was Created

In Customer Support and Player Support operations, optimizing handle time, identifying workflow bottlenecks, and improving agent experience requires granular observation of daily tasks. 

Standard stopwatches and interval timers are built for athletics, cooking, or general productivity (Pomodoro). They completely lack the domain-specific tools needed to analyze support operations:
- Tracking specific **Ticket IDs** alongside split times.
- Distinguishing between **Value-Added**, **Non-Value-Added**, and **Delay** work elements.
- Categorizing granular actions across multiple tools
- Correlating operational friction with specific **Issue Types** and **Agents**.
- Capturing multiline operational notes without breaking CSV exports or table layouts.

**I created this app because I couldn't find an existing stopwatch or timer app that was actually designed to conduct time-motion studies on Customer Support or Player Support workflows.**

---

## 🚀 Purpose & Objectives

1. **Uncover Operational Friction**: Measure how long support specialists spend navigating admin dashboards, reading user histories, consulting QA channels, or searching documentation versus writing personalized resolutions.
2. **Standardize Work Elements**: Classify support activities into clear operational categories (e.g., ticket triage, investigation, reproduction, response polishing, tag auditing).
3. **Streamline Data Analysis**: Instantly generate clean, spreadsheet-ready data that exports directly to CSV with full multi-line notes, ticket references, and precise duration splits.
4. **Frictionless Real-time Timing**: Provide ergonomic keyboard shortcuts and quick-entry controls so observers or agents can record split-second transitions without breaking their workflow rhythm.

---

## ✨ Key Features

- **Session-Based Architecture**: Group lap elements into named sessions with operator/agent assignments. Automatic naming with date/time or compact clock codes.
- **End Session Handling**: Automatically detects any pending elapsed time or notes when "End" is pressed, logging the final lap cleanly before terminating the session.
- **Configurable Types**: Fully configurable types stored persistently with instant add/remove controls directly in the settings panel.
- **Ticket ID Tracking**: Dedicated numeric ticket input persisted across laps for tracking multiple work elements on the same case.
- **Auto-Formatting Note Editor**:
  - Automatically transforms dashes (`- `) into clean bullet points (`• `) for rapid note-taking.
  - Supports smart `Enter` continuation (automatically inserts the next bullet; double-enter clears the bullet).
  - Sanitizes table-breaking characters (semicolons, quotes, pipes, backslashes) with visual alerts to prevent corrupted data exports.
- **Live Editable Laps Log**: Edit notes, Ticket IDs, Lap Types, or Issue Types inline directly in the log table. Changes are auto-saved.
- **CSV Export**: RFC 4180 compliant, preserving multi-line notes and UTF-8 encoding.
- **Dark / Light Theme**: One-click theme toggle
- **Responsive Layout**: Two-column desktop dashboard for wide monitors, collapsing down to mobile-friendly card stacks for field observation.

---

## ⌨️ Keyboard Shortcuts

| Key | Action |
|---|---|
| `Space` or `Enter` | **Start** / **Pause** / **Resume** timer |
| `L` | Record **Lap** |
| `E` | **End** session (automatically captures final lap if time elapsed) |
| `R` | **Reset** session (with confirmation) |

---

## 📊 Recorded Data Model

Every exported session produces structured data ready for pivot tables and operational modeling:

| Column | Description |
|---|---|
| **Session** | Unique session identifier (e.g. `Session-220727`) |
| **Agent** | Name of the specialist / operator being observed |
| **Lap** | Sequential element number |
| **Time** | Cumulative elapsed session time (`HH:MM:SS.cc`) |
| **Duration** | Specific duration of this element split (`HH:MM:SS.cc`) |
| **Duration (s)** | Duration in decimal seconds for numerical calculation |
| **Session Total** | Final total duration of the completed session |
| **Type** | Configured lap classification (e.g., *Tool Lookup*, *Writing Reply*, *Escalation*) |
| **Issue Type** | Ticket category (e.g., *Account Recovery*, *Bug Report*, *Billing Issue*) |
| **Ticket ID** | Case / Ticket identification number |
| **Notes** | Detailed observer observations and element descriptions |

---

## 🛠️ Tech Stack

- **Frontend**: Clean, dependency-free Vanilla JavaScript (ES6+), semantic HTML5, modern CSS custom properties.
- **Database & Backend**: PostgreSQL schema managed with Drizzle ORM and modern serverless endpoints.
- **Export Engine**: RFC 4180 CSV serializer with UTF-8 BOM encoding for seamless Microsoft Excel and Google Sheets compatibility.

---

## 📄 License & Attribution

Distributed under the **GNU General Public License v3.0** (GNU GPLv3). See [`LICENSE`](LICENSE) for details.
