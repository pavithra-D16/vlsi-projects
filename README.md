# VLSI Projects 🔌

A collection of digital circuit designs using Verilog HDL
by Pavithra | EEE Final Year Student

---

## 🛠️ Tools Used
- EDA Playground (Icarus Verilog 12.0)
- Git & GitHub

---

## 📁 Projects

### 1. AND Gate
- Output is 1 only when BOTH inputs are 1
- [▶️ Run on EDA Playground](https://edaplayground.com/x/uDD3)

### 2. OR Gate
- Output is 1 when ANY one input is 1
- [▶️ Run on EDA Playground](https://edaplayground.com/x/nGdn)

### 3. NOT Gate
- Output is always OPPOSITE of input
- [▶️ Run on EDA Playground](https://edaplayground.com/x/fdAg)

### 4. NAND Gate
- Output is 0 only when BOTH inputs are 1
- [▶️ Run on EDA Playground](https://edaplayground.com/x/ExUQ)

### 5. NOR Gate
- Output is 1 only when BOTH inputs are 0
- [▶️ Run on EDA Playground](https://edaplayground.com/x/ddBc)

### 6. XOR Gate
- Output is 1 when inputs are DIFFERENT
- [▶️ Run on EDA Playground](https://edaplayground.com/x/T59q)

### 7. Half Adder
- Adds two 1-bit numbers, gives Sum and Carry
- Sum = XOR of inputs, Carry = AND of inputs
- [▶️ Run on EDA Playground](https://edaplayground.com/x/n2Um)

### 8. Full Adder
- Adds three 1-bit numbers (a, b, carry_in)
- Built using two Half Adders combined
- [▶️ Run on EDA Playground](https://edaplayground.com/x/X9Fe)

### 9. 4-bit Ripple Carry Adder
- Adds two 4-bit binary numbers using 4 chained Full Adders
- Carry "ripples" from one Full Adder to the next
- [▶️ Run on EDA Playground](https://edaplayground.com/x/Uwfk)

### 10. 2:1 Multiplexer (MUX)
- Selects one of two inputs based on sel line
- sel=0 → y=a, sel=1 → y=b
- [▶️ Run on EDA Playground](https://edaplayground.com/x/kRSJ)

### 11. 1:2 Demultiplexer (DEMUX)
- Sends one input to one of two outputs based on sel line
- [▶️ Run on EDA Playground](https://edaplayground.com/x/ficP)

### 12. 4:2 Encoder
- Converts one active input (one-hot) into 2-bit binary code
- [▶️ Run on EDA Playground](https://edaplayground.com/x/cRvP)

### 13. 2:4 Decoder
- Converts 2-bit binary input into one active output
- Only ONE output becomes 1 at a time
- [▶️ Run on EDA Playground](https://edaplayground.com/x/rCDX)

### 14. D Flip Flop
- Sequential circuit with memory
- Q copies D only at rising clock edge
- Output remembers previous value between clock edges
- [▶️ Run on EDA Playground](https://edaplayground.com/x/ajaA)

### 15. JK Flip Flop
- Sequential circuit with Set, Reset and Toggle functions
- J=0,K=0 → No change | J=0,K=1 → Reset
- J=1,K=0 → Set | J=1,K=1 → Toggle
- [▶️ Run on EDA Playground](https://edaplayground.com/x/7niJ)