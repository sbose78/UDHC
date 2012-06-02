/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bose;

/**
 *
 * @author root
 */

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;


public class EmailUtil {
    
    public static String sendMail(String from,String to[], String subject, String content)throws Exception
    {
                    String host = "smtp.gmail.com";
                    from = "sbose78@gmail.com";
                    String pass = "**";
                    Properties props = System.getProperties();
                    props.put("mail.smtp.starttls.enable", "true"); // added this line
                    props.put("mail.smtp.host", host);
                    props.put("mail.smtp.user", from);
                    props.put("mail.smtp.password", pass);
                    props.put("mail.smtp.port", "587");
                    props.put("mail.smtp.auth", "true");

               /*     String email_to[] = {"sbose78@gmail.com"}; // added this line
                    to=email_to;
                    * 
                    */

                    Session session = Session.getDefaultInstance(props, null);
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(from));

                    InternetAddress[] toAddress = new InternetAddress[to.length];

                    // To get the array of addresses
                    for( int i=0; i < to.length; i++ ) { // changed from a while loop
                        toAddress[i] = new InternetAddress(to[i]);
                    }
                    System.out.println(Message.RecipientType.TO);

                    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
                        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
                    }
                    
                    
                    message.setSubject(subject);
                    //message.setText("Welcome to JavaMail");
                    
                    message.setContent(content, "text/html");
                    
                    Transport transport = session.getTransport("smtp");
                    transport.connect(host, from, pass);
                    transport.sendMessage(message, message.getAllRecipients());
                    transport.close();

      return "OK";
   }
        
        
   
    
}
