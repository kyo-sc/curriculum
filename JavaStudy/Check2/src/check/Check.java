package check;
//constantsパッケージconstantsクラスをインポートして使えるようにしてる。
import constants.Constants;

public class Check{
	//フィールド変数firstNameとlastNameを宣言し自分の名前で初期化
	//private修飾子なのでcheckだけアクセス可
	private static String firstName = "ito";
	private static String lastName = "kyosuke";

	private static void printName() {
		System.out.println(firstName + lastName);
	}

	public static void main(String[] args) {
		//checkクラスのprintNameメソッドを呼び出している。
		Check.printName();
		//petクラスをインスタンス化して引数としてConstantsクラスを指定している。
		Pet pet = new Pet(Constants.CHECK_CLASS_JAVA, Constants.CHECK_CLASS_HOGE);
		//
		RobotPet robotpet = new RobotPet(Constants.CHECK_CLASS_R2D2,Constants.CHECK_CLASS_LUKE);
		//petクラスからintroduceを呼びだしている。
		pet.introduce();
		//
		robotpet.introduce();
	}


}


