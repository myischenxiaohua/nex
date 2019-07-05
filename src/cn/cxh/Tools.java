package cn.cxh;

public class Tools {

    public boolean isNumber(int n) {  //被1和本身整除。
        boolean fla=false;
        for (int i = 2; i <n; i++) {                    //  3    5 1-4
            // i 1 2
            if (n % i == 0) {
                fla=true;
            }
        }
        return fla;
    }

}
