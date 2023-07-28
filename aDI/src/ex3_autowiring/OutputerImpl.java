package ex3_autowiring;

import java.io.FileWriter;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Required;

public class OutputerImpl implements Outputer {
	String path;
	
	@Required
public void setPath(String path) {
		this.path = path;
	}


@Override
public void writeMessage(String msg) throws IOException{
	FileWriter f= new FileWriter(path);
	f.write(msg);
	System.out.println(path+"에 "+msg+"저장");
	f.close();
}
}
