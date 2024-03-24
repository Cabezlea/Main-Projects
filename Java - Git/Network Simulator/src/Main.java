import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;


public class Main {
    public static void main(String[] args) {
        ArrayEventList eventList = new ArrayEventList();

        //method to open the events.txt file
        File file = new File("events.txt");

        try {
            // Create a Scanner to read the input from the file
            Scanner scnr = new Scanner(file);

            // Read each line from the file using .NextLine
            while (scnr.hasNextLine()) {
                String line = scnr.nextLine();

                // Pass the arguments to processCommands so it detects if it is I or R
                processCommand(line, eventList);
            }

            // Close the scanner
            scnr.close();
        }
        catch (FileNotFoundException e) {
            /*
            * I am aware that this is not necessary, but I still wanted to include
            * it just to make sure it covers every possible outcome
            */
            System.out.println("File not found: " + e.getMessage());
        }

        System.out.println("Future event list size: " + eventList.size());
        System.out.println("Future event list capacity: " + eventList.capacity());
    }

    //This process command serves an important process, it processes each line using the while loop
    //It analyzes each line using a switch command representing the two possible Events: I & R
    private static void processCommand(String line, ArrayEventList eventList) {
        // Split the line into command and argument, only if there is any of course
        String[] parts = line.split(" ");
        String command = parts[0];
        int arg = 0;
        if (parts.length > 1) {

        }

        // Switch statement to check different cases: I and R
        switch (command) {
            case "I":
                // Creating an object of the Timer class and passing arg as a parameter
                arg = Integer.parseInt(parts[1]);
                Timer timer = new Timer(arg);
                eventList.insert(timer);
                System.out.println(timer);
                break;
            case "R":
               
                Event removedEvent = eventList.removeFirst();
                removedEvent.handle();
                break;

            case "C":
                // Cancel the timer with the exact id
                int timerId = Integer.parseInt(parts[1]);
                if (timerId >= 0 && timerId < eventList.size()) {

                    Event canceledEvent = eventList.events[timerId];
                    if (canceledEvent != null) {
                        eventList.remove(canceledEvent);
                        System.out.println("Canceled timer with ID " + timerId);
                    } else {
                        System.out.println("Timer with ID " + timerId + " not found.");
                    }
                } else {
                    System.out.println("Invalid timer ID: " + timerId);
                }
                break;
            default:
                System.out.println(" " + line);


        }

    }
}