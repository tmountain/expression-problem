class BinaryPlus implements Expr {
    private final Expr lhs;
    private final Expr rhs;

    public BinaryPlus(Expr lhs, Expr rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    public String toString() {
        return this.lhs.toString() + " " + this.rhs.toString();
    }

    public float eval() {
        return this.lhs.eval() + this.rhs.eval();
    }
}
