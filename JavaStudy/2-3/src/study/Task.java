package study;


// ① TaskクラスにCalculatorクラスを継承させなさい。
	public class Task extends Calculator{
    /**
     * タスクの実行
     */
    public void doTask() {

        // ② Calculator.javaのすべてのオーバーロードメソッド「plus」に適当な引数を与え、下記画像のよう出力されるようコーディングしなさい。
        // 尚、「どのクラスから呼び出しているか」を明確にするため、plus()には呼び出し元のキーワードを付与すること。

    		int Q = plus(10);
    		System.out.println("plusメソッドの引数が1の場合" + Q);
    		int W = plus(10,20);
    		System.out.println("plusメソッドの引数が2の場合" + W);
    		int E = plus(10,20,30);
    		System.out.println("plusメソッドの引数が3の場合" + E);



    }
}