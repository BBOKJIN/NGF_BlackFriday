<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "user.GenerateCoupon" %>
<%@ page import = "javax.mail.*" %>
<%@page import="java.util.Properties"%>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import= "java.nio.file.Files" %>
<%@ page import= "java.nio.file.Paths" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] times = {"10-12", "12-14", "14-16", "16-18", "18-20"};
		String partedTime;
		String userID = (String) session.getAttribute("userID");
		UserDAO userDAO = new UserDAO();
		int flag = userDAO.getFlag();
		partedTime = times[flag % 5];
		flag += 1;
		
		userDAO.addFlag(flag);
	
		GenerateCoupon gnc = new GenerateCoupon();
		String couponCode = gnc.generateCouponCode();
	
		// 쿠폰 번호 중복 체크
		while (userDAO.isCouponCodeExists(couponCode)) {
		    couponCode = gnc.generateCouponCode();
		}
	
		userDAO.setCoupon(userID, couponCode, partedTime);
		
		
	
		String to = userDAO.getEmail(userID);  // 수신자 이메일 주소
        String from = "2445671@naver.com";  // 발신자 이메일 주소
        String host = "smtp.naver.com";  // SMTP 서버 주소
        final String[] passwordContainer = new String[1];  // final 배열로 선언
        try {
            String filePath = "C:/Users/fdno5/Desktop/password.txt";
            passwordContainer[0] = new String(Files.readAllBytes(Paths.get(filePath)), "UTF-8").trim();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error reading password file. Email sending aborted.");
            return;
        }
        
        Properties properties = new Properties();
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.port", "465");
        properties.setProperty("mail.smtp.ssl.enable", "true");
        
        Session session2 = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, passwordContainer[0]);  // 배열의 첫 번째 요소를 참조
            }
        });

        try {
            MimeMessage message = new MimeMessage(session2);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("이커머스 스타트업인 A사입니다.");
            message.setText("블랙프라이데이 할인 쿠폰입니다.\n" + "쿠폰 번호 : " + couponCode + "\n" + "지정 날짜 : " + "11월 24일 금요일\n" + "지정 시간 : " + partedTime);

            Transport.send(message);
            
            response.sendRedirect("indexmain.jsp");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
		
	%>
</body>
</html>