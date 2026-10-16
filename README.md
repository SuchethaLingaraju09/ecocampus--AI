# 🌱 EcoCampus AI — Campus Sustainability Command Center

> **Tagline:** *Smarter Campus. Greener Future.*  
> **Hackathon Event:** DSU Code Clash 2.0  
> **Problem Statement:** AI-Powered Sustainable Campus  
> **Repository Status:** Fully runnable, locally verified, zero external build-tool dependencies required.

---

## ⚖️ Hackathon AI-Assisted Coding Disclosure & Compliance Notice

> [!IMPORTANT]
> **Check Hackathon Rules for Permitted AI-Assisted Coding:**  
> Before presenting or submitting this generated scaffold and implementation at DSU Code Clash 2.0, the participant / user **must ensure explicit permission from the organizing committee** regarding the use of AI coding assistants.
> 
> All engineering logic, heuristic rules, defensible formulas, UI components, and mock architectures in this codebase were designed to demonstrate an ethical, transparent, and explainable prototype. No proprietary or uncredited third-party code was used.

---

## 🌟 Project Vision & Core Workflow

Campuses consume vast amounts of electrical power, potable water, and daily consumables. Typically, environmental waste (e.g. concealed restroom valve leaks, unoccupied classrooms with full lighting and AC, overflowing cafeteria bins) goes unreported for days, wasting thousands of liters of water and kilowatt-hours of electricity.

**EcoCampus AI** solves this by delivering an end-to-end sustainability command center:
1. **Community & Patrol Reporting:** Anyone on campus can report an incident in under 30 seconds with category, zone, description, and optional photo.
2. **Computer Vision & Visual Triage:** Inspects photo evidence, identifies surface clues (water pooling, bin overflow, fluorescent status), and computes transparent heuristic urgency without fabricating AI confidence.
3. **Dynamic 2D Digital Twin:** Real-time vector schematic of 8 campus zones that automatically calculates health scores (0–100%) and updates color coding (Good / Needs Attention / Critical) as issues are filed, updated, or resolved.
4. **Grounded AI Copilot:** A consultative operational assistant grounded strictly in current live records to draft facilities briefings, identify emergency zones, and propose SOPs without hallucinations.
5. **Resolution Dispatch & Audit Trail:** Operations managers assign responsible teams, record work orders, and maintain an immutable historical timeline.
6. **Defensible Sustainability Analytics:** Transparent impact formulas calculate water and energy savings using editable baseline constants; exports to CSV and printable audit reports.

---

## 🚀 Quick Launch Guide (Windows PowerShell)

EcoCampus AI requires **zero npm packages** and **no complex runtimes**. It runs instantly on any Windows machine using PowerShell’s built-in HTTP server or by launching the batch runner.

### Method 1: One-Click Launch (Recommended)
Double-click `launch.bat` in the project root directory.

---

### Method 2: Windows PowerShell Command Line

1. Open **Windows PowerShell** in this folder:
   ```powershell
   cd "c:\Users\suche\OneDrive\Desktop\codeclash"
   ```

2. Start the local server:
   ```powershell
   .\serve.ps1
   ```
   *Or with a custom port:*
   ```powershell
   .\serve.ps1 -Port 8080
   ```

3. The server starts instantly, outputs connection logs, and **automatically opens your default browser** to:
   ```text
   http://localhost:5173/
   ```

4. **How to Stop the Server:**
   Press `Ctrl + C` in the PowerShell window. The server will terminate cleanly.

---

## 📋 Comprehensive Feature Checklist

| Pillar / Module | Feature | Implementation Status | Notes |
|---|---|---|---|
| **Overview Dashboard** | Real-time KPI Counters | ✅ **100% Implemented** | Total, Active, Critical, Resolution %, Water Bleed |
| **Overview Dashboard** | Dynamic Canvas Charts | ✅ **100% Implemented** | Categories Donut, Weekly Trend, Status Gauge, Zone Health |
| **Overview Dashboard** | Recent Activity Feed | ✅ **100% Implemented** | Synchronized with issue store |
| **Digital Twin** | 2D Schematic Campus Map | ✅ **100% Implemented** | 8 schematic zones, keyboard accessible, legend |
| **Digital Twin** | Dynamic Health Scoring | ✅ **100% Implemented** | Penalties calculated from active issue severities |
| **Digital Twin** | Interactive Zone Drawer | ✅ **100% Implemented** | Active incidents, floor area, quick report trigger |
| **Issue Reporting** | Validated Submission Form | ✅ **100% Implemented** | Mandatory fields, character limits, anonymous option |
| **Issue Reporting** | Photo Upload & Client Preview | ✅ **100% Implemented** | Format & size checks, client-side data URI |
| **Issue Ledger** | Search & Multi-Filters | ✅ **100% Implemented** | Keyword, Category, Zone, Severity, Status, Sorting |
| **Issue Ledger** | Modal Detail & Status Workflow | ✅ **100% Implemented** | New ➔ Under Review ➔ Assigned ➔ Resolved |
| **Issue Ledger** | Immutable Audit Trail | ✅ **100% Implemented** | Timestamps, author logging, action notes |
| **Computer Vision** | Sample Incident Image Feed | ✅ **100% Implemented** | 4 clean vector SVG sample scenes included |
| **Computer Vision** | Visual Clue Checklist | ✅ **100% Implemented** | Interactive bounding boxes & clue weights |
| **Computer Vision** | Honest Heuristic Triage | ✅ **100% Implemented** | Labeled as demo triage; explains photo limitations |
| **Computer Vision** | Transfer to Report Form | ✅ **100% Implemented** | Pre-fills form fields with diagnosis data |
| **AI Copilot** | Grounded Local Copilot | ✅ **100% Implemented** | Reads in-memory campus state, zero hallucination |
| **AI Copilot** | Quick Operational Briefings | ✅ **100% Implemented** | Morning briefing, hotspot review, student notice |
| **AI Copilot** | External LLM API Proxy | ⚙️ **Config-Ready** | Configurable via `.env.example` template |
| **Sustainability Insights** | MTTR Calculation | ✅ **100% Implemented** | Mean time to resolution from verified timestamps |
| **Sustainability Insights** | Defensible Formulas | ✅ **100% Implemented** | $V = \text{flow} \times t$, $E = P \times t$, $\text{CO}_2 = E \times 0.82$ |
| **Sustainability Insights** | Assumptions Modeler | ✅ **100% Implemented** | Editable constants (leak rate, grid factor, tariffs) |
| **Sustainability Insights** | CSV Export | ✅ **100% Implemented** | Downloads full issue ledger with metadata |
| **Sustainability Insights** | Printable Executive Summary | ✅ **100% Implemented** | Clean printable view for reports or PDF save |
| **Campus Action Plan** | Dynamic Task Prioritization | ✅ **100% Implemented** | Auto-ranked P0 (Emergency) to P3 (Low) |
| **Campus Action Plan** | Task Completion Sync | ✅ **100% Implemented** | Completing task resolves linked issue & updates map |
| **Campus Action Plan** | Sustainability SOPs | ✅ **100% Implemented** | Plumbing, Electrical, Waste, Community guidelines |
| **System Integrity** | Automated Self-Test Suite | ✅ **100% Implemented** | In-browser test runner verifying 9 core assertions |
| **System Integrity** | Reset to Demo Scenario | ✅ **100% Implemented** | Restores baseline demo state with confirmation |

---

## 🏛️ Architecture & Data Flow

```text
       ┌────────────────────────────────────────────────────────┐
       │                User Interface Views                    │
       │ (Dashboard, Digital Twin, CV Triage, Copilot, Ledger) │
       └───────────────────────────▲────────────────────────────┘
                                   │
              Event Subscription   │ State Mutation
              (Re-render triggers) │ (add, update, delete, reset)
                                   │
       ┌───────────────────────────┴────────────────────────────┐
       │            appState (Single Source of Truth)           │
       │                                                        │
       │  - Issues Ledger Array       - Zone Registry Array     │
       │  - Health Scoring Algorithm  - Defensible Math Model   │
       │  - Audit History Changelog   - Baseline Assumptions    │
       └───────────────────────────▲────────────────────────────┘
                                   │
                       Storage Sync│ (Local-First)
                                   │
       ┌───────────────────────────▼────────────────────────────┐
       │             Browser LocalStorage Persistence           │
       │            (ecocampus_ai_issues_v1, etc.)              │
       └────────────────────────────────────────────────────────┘
```

---

## 🎯 3-Minute Judge Demonstration Script

Here is an effective script to present to judges during DSU Code Clash 2.0 evaluation:

### Minute 1: The Command Center & Digital Twin
1. Open the **Overview Dashboard** (`http://localhost:5173/#dashboard`).
   - Highlight the **Total Registered** counter and the **Dynamic Canvas Charts**.
   - Point out the **Demo Mode** indicator: *"Every record is transparently labeled as a demo simulation."*
2. Click **Digital Twin Map** in the sidebar.
   - Point to the 8 schematic campus zones.
   - Point out that **Student Amenities & Washrooms** is color-coded **RED (Critical)** with a health score of 40%.
   - Click the zone to slide open the detail drawer: show the active flush valve leak issue `ECO-2026-001` wasting an estimated 4.5 L/min.

### Minute 2: Computer Vision & Triage Flow
1. Click **Computer Vision** in the sidebar.
   - Show the technical disclosure: *"We explain that photos capture surface markers, but cannot prove concealed sub-surface pipe pressures."*
   - Select the preset **"Cafeteria Overflowing Organics Bin"** or upload a photo.
   - Check the visible clue checkboxes (e.g., *Refuse spilled onto adjacent walkway*).
   - Show the algorithmic diagnostic: *High Severity, Contamination Risk*.
   - Click **"Transfer Diagnosis to Issue Report Form"**.
2. Notice how the Report Form opens pre-filled with the diagnosis, severity, and photo.
   - Click **Submit Report to Operations**.
   - Notice the toast confirmation and the immediate appearance of the new issue in the **Issue Ledger**!

### Minute 3: Resolution, Impact, & Grounded AI
1. Go to **Campus Action Plan**.
   - Show the auto-generated task board ranked P0 to P3.
   - Find the task for `ECO-2026-001` (Restroom Leak) and click **"Mark Completed & Resolve Issue"**.
2. Switch back to **Digital Twin Map**:
   - The Washroom zone health immediately jumps from **Critical (40%)** back to **Good (100%)**!
3. Go to **Grounded AI Copilot**:
   - Click the quick action chip **"Draft Facilities Morning Briefing"**.
   - Show that the response is derived **strictly from the current in-memory records**, citing verified issue IDs with zero hallucination.
4. Go to **Impact & Insights**:
   - Show the **Defensible Calculation Methodology** formulas.
   - Click **"Edit Assumptions"** to show judges that constants (leak flow rate, grid emission factor) can be calibrated.
   - Click **"Download CSV"** to demonstrate raw ledger export.
5. In the top bar, click **"Run Tests"** to show the live automated self-test suite passing all assertions.

---

## 🔒 Privacy & Security Commitments

- **Zero Telemetry Leakage:** All incident records, coordinates, and photo data URIs remain stored inside browser `localStorage`. No data is dispatched to unauthorized third parties.
- **Client-Side File Sanitization:** Images uploaded are constrained to PNG, JPEG, and WebP format and limited to a 5MB threshold.
- **Credential Safety:** Never store API keys in frontend code. Optional LLM proxies are configured via environment variables as demonstrated in `.env.example`.

---

## 🧪 Automated Self-Test Suite Report

The codebase includes an integrated automated self-test runner (`js/testRunner.js`). You can execute it directly from the header **"Run Tests"** button or in the browser DevTools console via `CampusTestSuite.runAll()`.

**Verified Test Assertions:**
1. `Initial issues loaded`: Verified $\ge 8$ baseline demo records (including 3 active critical incidents).
2. `8 Campus zones registered`: Verified all schematic sectors.
3. `Issue creation generates valid ECO ID`: Verified `ECO-2026-XXX` schema.
4. `New issue status & history`: Verified default status `new` with initial timestamp.
5. `Zone health transitions`: Verified critical issue causes zone to drop to `critical`.
6. `Status transitions`: Verified `new` $\to$ `assigned` $\to$ `resolved` with audit logging.
7. `Zone health recovery`: Verified zone recovers to `good` upon issue resolution.
8. `Defensible impact math`: Verified water and energy calculations produce non-negative outputs.
9. `Reset to demo`: Verified pristine restoration without memory corruption.

---

## 🛠️ Troubleshooting

- **Port 5173 already in use:** `serve.ps1` automatically detects busy ports and falls back to port `8080`.
- **PowerShell Execution Policy Warning:** Run `powershell -ExecutionPolicy Bypass -File .\serve.ps1` or simply double-click `launch.bat`.
- **Resetting Test Data:** Click **"↺ Reset Demo"** in the top navigation bar at any time to restore the initial hackathon state.
