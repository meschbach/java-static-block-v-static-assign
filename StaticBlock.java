import java.math.*;

public class StaticBlock {
	private static final BigDecimal classVariable;

	static {
		classVariable = new BigDecimal( "42" );
	}
}

