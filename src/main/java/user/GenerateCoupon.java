package user;

import java.util.*;
import java.sql.*;

public class GenerateCoupon {
	public static String generateCouponCode() {
        // 쿠폰 코드 생성 로직. 예를 들면 16자리의 무작위 문자열 생성:
        return UUID.randomUUID().toString().replace("-", "").substring(0, 16);
    }


}
