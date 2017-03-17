public class Constant implements Expr {
    private final float value;

    public Constant(float value) {
        this.value = value;
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public float eval() {
        return this.value;
    }
}
