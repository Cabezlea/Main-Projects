public class GpaCalculator {
    private double gpa; //Variable to hold the gpa value
    private String[] letterGrades; //Array to hold all the possible letter grades
    private int[] credits; //We hold the credit hours of a class in this array

    //Constructor to initiate the values of letterGrades and credits with their specific size
    public GpaCalculator(int numberOfCourses) {
        letterGrades = new String[numberOfCourses];
        credits = new int[numberOfCourses];
    }
    //We create this method both to add the credits and grades for the specific course
    public void addGradeAndCredit(int index, String letterGrade, int credit) {
        letterGrades[index] = letterGrade;
        credits[index] = credit;
    }

    //Method to convert letter to its respective number value by using switch statement
    private double letterGradeToGPA(String letterGrade) {
        switch (letterGrade.toUpperCase()) {
            case "A":
                return 4.0;
            case "B":
                return 3.0;
            case "C":
                return 2.0;
            case "D":
                return 1.0;
            case "F":
                return 0.0;
            default:
                // Handle invalid input
                return -1.0; // or throw an exception
        }
    }

    //This is the final method to calculate the gpa based on letter grades and credit hours
    public double calculateGPA() {

        //Initialize  both values with 0
        double totalGradePoints = 0;
        int totalCredit = 0;
        //Loop through each value
        for (int i = 0; i < letterGrades.length; i++) {
            //Passes the method and uses letterGrades as its parameter and uses the index which loops through every value
            double gpaValue = letterGradeToGPA(letterGrades[i]);
            totalGradePoints += gpaValue * credits[i]; // Calculates the final grade points
            totalCredit += credits[i]; // Calculates totalCredit+ credits[i]
        }
        gpa = totalGradePoints / totalCredit; //FINAL gpa returned
        return gpa;
    }
}
