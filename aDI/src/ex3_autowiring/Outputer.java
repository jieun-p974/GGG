package ex3_autowiring;

import java.io.IOException;

public interface Outputer {

	void writeMessage(String msg) throws IOException;
}
//인터페이스임