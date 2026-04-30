📌 Project Overview
This project implements a Digital Voting Machine using Verilog HDL and simulates it in Xilinx Vivado. The system ensures one vote per user using an enable-based control mechanism and is designed for FPGA implementation (Artix-7).

🎯 Key Features
✅ Supports multiple candidates (3 buttons)
✅ One vote per user (Enable lock mechanism)
✅ Synchronous design (clock-based)
✅ Reset functionality for next voter
✅ Simulation verified using testbench
✅ FPGA deployable (Basys 3 – Artix-7)
🧠 Design Concept



The system uses:

✅ Push buttons → vote input
✅ Counters (Registers) → vote storage
✅ Enable signal → prevents multiple voting


Voting Logic:
✅ System starts with enable = 1
✅ User presses a button → vote counted
✅ enable = 0 → further votes blocked
✅ Reset required for next voter


Target Board:

FPGA Family: Artix-7
Device: XC7A35T
Package: CPG236
Speed Grade: -1

👉 Full part name: xc7a35tcpg236-1


🔌 I/O Mapping (Example)

Signal	FPGA Component
btn1 - 	Push Button
btn2 - 	Push Button
btn3 -	Push Button
rst	 - Reset Button
count - outputs	LEDs


🚀 Future Improvements:

🔄 FSM-based voting control
🔐 Admin unlock instead of reset
🔢 7-segment display for vote count
📡 IoT integration for remote monitoring


📚 Technologies Used
Verilog HDL
Xilinx Vivado

Schematic:
<img width="1574" height="831" alt="Screenshot 2026-04-30 045225" src="https://github.com/user-attachments/assets/72f13028-38db-4524-afae-d21f8da3cb0f" />


Output Waveform:

<img width="1581" height="884" alt="Screenshot 2026-04-30 045109" src="https://github.com/user-attachments/assets/c053e7fb-cf76-4ade-8cd7-035498e70908" />

