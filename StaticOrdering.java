import java.math.*;

class StaticOrdering {
	static {
		System.exit(1);
	}
	private static final BigDecimal zero = BigDecimal.ZERO;
	private static final BigDecimal first; 
	static {
		first = new BigDecimal(1);
	}

	private static final BigDecimal two = new BigDecimal(2); 
}
