
# 🔹 Scan Chain Implementation (DFT Project)

## 📌 Overview

This project demonstrates the implementation of a **Scan Chain**, a fundamental technique used in **Design for Testability (DFT)** in VLSI design. The project shows how a conventional **D Flip-Flop is converted into a Scan D Flip-Flop**, which is then used to build a **4-bit scan chain**. A Verilog testbench is used to verify the functionality of the scan chain through simulation and waveform analysis.

---

## 🎯 Objectives

The main objectives of this project are:

* To understand the concept of **Scan Design** in DFT.
* To convert a standard **D Flip-Flop into a Scan D Flip-Flop**.
* To design and implement a **4-bit Scan Chain** using scan flip-flops.
* To verify the scan chain behavior using a **Verilog testbench**.
* To analyze results using waveform simulation.

---

## 📂 Files in this Repository

| File Name                                  | Description                                  |
| ------------------------------------------ | -------------------------------------------- |
| dff.v                                      | Verilog code for normal D Flip-Flop          |
| scan_d_flipflop.v                          | Modified D Flip-Flop with scan capability    |
| scan_chain_4bit.v                          | 4-bit scan chain implementation              |
| tb_scan_chain.v                            | Testbench to verify scan chain functionality |
| waveform_screenshot.png                    | Simulation waveform result                   |




## 🛠️ Tools Used

* **GVim** – Text editor for writing and editing Verilog code
* **ModelSim** – Simulation tool for compiling, simulating, and viewing waveforms

---

## ▶️ How to Run the Project (Simulation Steps)

### Step 1: Create a library in ModelSim

```bash
vlib work
```

### Step 2: Compile the Verilog files

```bash
vlog d_flipflop.v
vlog scan_d_flipflop.v
vlog scan_chain_4bit.v
vlog tb_scan_chain.v
```

### Step 3: Run the simulation

```bash
vsim tb_scan_chain
```

### Step 4: View waveforms

In ModelSim:

* Add signals to waveform
* Run simulation
* Observe scan-in, shifting, and scan-out behavior



 ✅ Results:

* Successfully converted a normal D Flip-Flop into a **Scan D Flip-Flop**.
* Implemented a functional **4-bit scan chain**.
* Verified correct scan operation using a **Verilog testbench**.
* Observed correct shift behavior in simulation waveforms in ModelSim.





## 👨‍💻 Author

Mudiminchi Harsha Vardhan
VLSI Enthusiast | DFT Learner


