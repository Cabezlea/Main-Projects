public class GpaCalculator {
    private double gpa;
    private String[] letterGrades;
    private int[] credits;

    public GpaCalculator(int numberOfCourses) {
        letterGrades = new String[numberOfCourses];
        credits = new int[numberOfCourses];
    }

    public void addGradeAndCredit(int index, String letterGrade, int credit) {
        letterGrades[index] = letterGrade;
        credits[index] = credit;
    }

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


    public double calculateGPA() {
        double totalGradePoints = 0;
        int totalCredit = 0;
        for (int i = 0; i < letterGrades.length; i++) {
            double gpaValue = letterGradeToGPA(letterGrades[i]);
            totalGradePoints += gpaValue * credits[i];
            totalCredit += credits[i];
        }
        gpa = totalGradePoints / totalCredit;
        return gpa;
    }
}
