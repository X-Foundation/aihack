class Main {  
    public Interpreter(@NotNull File modelFile);

    public static void main(String args[]) { 
        try (Interpreter interpreter = new Interpreter(file_of_tensorflowlite_model)) {
            Map<String, Object> inputs = new HashMap<>();
            inputs.put("input_1", input1);
            inputs.put("input_2", input2);
            Map<String, Object> outputs = new HashMap<>();
            outputs.put("output_1", output1);
            interpreter.runSignature(inputs, outputs, "mySignature");
          }
          try (Interpreter interpreter = new Interpreter(file_of_a_tensorflowlite_model)) {
            interpreter.run(input, output);
          }
          
    } 
}