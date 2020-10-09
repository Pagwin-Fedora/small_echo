import java.util.Scanner;
public class echo{
	public static void main(String[] args){
		Scanner n = new Scanner(System.in);
		try{
			String line = n.nextLine();
			while(true){
				System.out.println(line);
				line = n.nextLine();
			}
		}
		catch(Exception e){}
	}
}
