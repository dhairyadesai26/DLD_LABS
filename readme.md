# Digital Logic Design using Verilog & GTKWave

This project demonstrates **Digital Logic Design (DLD)** concepts using **Verilog** for coding and **GTKWave** for waveform visualization.  
We use **Icarus Verilog (`iverilog`)** as the compiler and simulator.

---

## 📂 Project Structure
├── src/
│ ├── <module_name>.v # Verilog module
│ ├── <testbench_name>.v # Testbench file
├── waves/
│ ├── <waveform_file>.vcd # Waveform output file (generated)
├── README.md

markdown
Copy code

---

## ⚙️ Requirements
Install the following:

- [Icarus Verilog](http://iverilog.icarus.com/) (`iverilog`, `vvp`)
- [GTKWave](http://gtkwave.sourceforge.net/) (`gtkwave`)

### On **Ubuntu/Debian**
```bash
sudo apt update
sudo apt install iverilog gtkwave -y
On Arch Linux
bash
Copy code
sudo pacman -S iverilog gtkwave
On Windows
Download and install Icarus Verilog: https://bleyer.org/icarus/

Download and install GTKWave: https://gtkwave.sourceforge.net/

Add iverilog, vvp, and gtkwave to your system PATH.

▶️ Running the Code
1. Compile Verilog module + testbench
bash
Copy code
iverilog -o <output_file>.out src/<module_name>.v src/<testbench_name>.v
2. Run the simulation
bash
Copy code
vvp <output_file>.out
3. View waveforms in GTKWave
Make sure your testbench includes:

verilog
Copy code
initial begin
    $dumpfile("waves/<waveform_file>.vcd");  // Output waveform file
    $dumpvars(0, <testbench_name>);          // Dump all signals from testbench
end
Run GTKWave:

bash
Copy code
gtkwave waves/<waveform_file>.vcd
📝 Example Testbench (General Form)
verilog
Copy code
module <testbench_name>;
  reg <inputs>;
  wire <outputs>;

  // Instantiate the module
  <module_name> uut (
    .<port1>(<signal1>),
    .<port2>(<signal2>),
    ...
  );

  initial begin
    $dumpfile("waves/<waveform_file>.vcd");
    $dumpvars(0, <testbench_name>);

    // Test sequence
    <input_signals> = <values>;
    #10 <input_signals> = <values>;
    ...
    #10 $finish;
  end
endmodule
🎯 Workflow Summary
bash
Copy code
# Compile
iverilog -o <output_file>.out src/<module_name>.v src/<testbench_name>.v

# Run Simulation
vvp <output_file>.out

# Open Waveforms
gtkwave waves/<waveform_file>.vcd