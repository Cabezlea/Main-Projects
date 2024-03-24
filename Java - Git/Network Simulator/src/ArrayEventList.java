public class ArrayEventList implements FutureEventList{

    //Initialize array with default size of 5
    public Event [] events = new Event[5];
    //Keep track of current number of events
    private int size = 0;
    private int simulationTime;


    @Override
    public Event removeFirst() {
        if (size == 0) {
            return null; //Return null if list is empty
        }
        int minIndex = 0;
        for (int i = 1; i < size; i++){
            if(events [i].getArrivalTime() < events[minIndex].getArrivalTime()){
                minIndex = i;
            }
        }

        //Remove and return the event at the front of the list
        Event firstEvent = events[minIndex];
        for (int i = minIndex; i < size - 1; i++){
            events [i] = events [i + 1];
        }
        size--;
        return firstEvent;
    }

    @Override
    public boolean remove(Event e){
        for (int i = 0; i < size; i++) {
            if (events[i] == e) {
                for (int j = i; j < size - 1; j++) {
                    events[j] = events[j + 1];
                }
                size--;
                return true;
            }
        }
        return false;
    }

    @Override
    public void insert(Event e) {
        if (size == events.length){
            //Double size of the array and store it in newArray of type Event
            Event [] newArray = new Event [events.length * 2];
            //Copy elements from old to the new array
            System.arraycopy(events, 0, newArray, 0, events.length);
            //Update reference
            events = newArray;
        }

        //add new event to the array
        events[size] = e;
        size++;
    }

    @Override
    public int size() {
        return size;
    }

    @Override
    public int capacity() {
        return events.length;
    }

    @Override
    public int getSimulationTime() {
        return simulationTime;
    }

}
