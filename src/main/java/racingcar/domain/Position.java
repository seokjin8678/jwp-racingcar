package racingcar.domain;

public class Position {
    private int position;

    public Position() {
        this.position = 0;
    }

    public void increase() {
        position++;
    }

    public int getValue() {
        return position;
    }
}
