package demon;

/**
 * Created by Ljy on 2017/7/8.
 */

/**
 * 最长非递减子序列
 */
public class Demon2 {

    public static void main(String[] args) {
        int[] array = {2,1,5,3,6,4,8,9,7};
        int len = 1;
        int[] d = new int[array.length];
        for (int i = 0; i < array.length;i++) {
            d[i] = 1;
            for (int j = 0; j < i; j++) {
                if (array[j] < array[i] && d[j] + 1 > d[i]) {
                    d[i] = d[j] + 1;
                }
                if (d[i] > len) {
                    len = d[i];
                }
            }
        }
        System.out.println(len);

    }
}
