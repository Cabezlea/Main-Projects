public class Timer implements Event {

    private int insertionTime;
    private int duration;
    private int id;
    private static int nextId = 0;

    public Timer(int duration){
        this.duration = duration;
        this.id = nextId++;
    }

    @Override
    public void setInsertionTime(int currentTime) {
        this.insertionTime = currentTime;
    }

    @Override
    public int getInsertionTime() {
        return insertionTime;
    }

    @Override
    public int getArrivalTime() {
        return insertionTime + duration;
    }

    @Override
    public void cancel(int currentTime) {
        System.out.println("Timer " + id + " cancelled at time:  " + currentTime);
    }

    @Override
    public void handle() {
        System.out.println("Timer " + id + " handled (arrival time: " + getArrivalTime() + ")");
    }
    @Override
    public String toString(){
        return "Timer " + id + " (insertion time: " + insertionTime + ", arrival time: " + getArrivalTime() + ")";
    }
}
