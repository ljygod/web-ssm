package demon;

/**
 * Created by Ljy on 2017/6/29.
 */
/** DP解决求硬币数的动态规划问题
 */
public class demon {


    public static void main(String[] args) {
        int[] min = new int[10+1];
        for (int i = 0;i < 11; i++) {
            min[i] = Integer.MAX_VALUE;
        }
        int[] v = {1, 3, 5};
        min[0] = 0;
        for (int i = 1;i < min.length; i++) {
            for (int j = 0; j < v.length; j++) {
                if (v[j] <= i && (min[i - v[j]] + 1) < min[i]) {
                    min[i] = min[i - v[j]] + 1;
                }
            }
        }
        for (int i = 0; i < min.length; i++) {
            System.out.println(min[i]);
        }
    }
}
