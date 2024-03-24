import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the number of courses: ");
        int numberOfCourses = scanner.nextInt();
        scanner.nextLine(); // Consume the newline character after reading the integer

        //We create an object of the GpaCalculator class and passing the number of courses
        //as the parameter to initialize the size of the arrays
        GpaCalculator calculator = new GpaCalculator(numberOfCourses);

         /*
         *For loop that goes according to the number of courses
         * Asks the user to enter the letter grade and credit hours for the course
         */
        for (int i = 0; i < numberOfCourses; i++) {
            System.out.println("Enter letter grade for course " + (i + 1) + ": ");
            String letterGrade = scanner.nextLine();
            System.out.println("Enter credit hours for course " + (i + 1) + ": ");
            int credit = 0; // Value of credit will be updated later in the program
            boolean validInput = false; //We create this variable to determine if there is an excepcion or not
            //This while loop will continue running as long as the validInput is false
            while (!validInput) {
                try {
                    credit = scanner.nextInt();
                    validInput = true;
                } catch (Exception e) {
                    System.out.println("Invalid input. Please enter an integer for credit hours.");
                    scanner.nextLine(); // Consume the invalid input
                }
            }
            scanner.nextLine(); // Consume the newline character after reading the integer
            calculator.addGradeAndCredit(i, letterGrade, credit);
        }

        // Calculate GPA
        double gpa = calculator.calculateGPA();

        // Display the calculated GPA
        System.out.println("Your GPA is: " + gpa);

        scanner.close();
    }
}
