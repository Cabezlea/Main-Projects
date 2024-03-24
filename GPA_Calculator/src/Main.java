import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the number of courses: ");
        int numberOfCourses = scanner.nextInt();
        scanner.nextLine(); // Consume the newline character after reading the integer

        GpaCalculator calculator = new GpaCalculator(numberOfCourses);

        for (int i = 0; i < numberOfCourses; i++) {
            System.out.println("Enter letter grade for course " + (i + 1) + ": ");
            String letterGrade = scanner.nextLine();
            System.out.println("Enter credit hours for course " + (i + 1) + ": ");
            int credit = 0;
            boolean validInput = false;
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
