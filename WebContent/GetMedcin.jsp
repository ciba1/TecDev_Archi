<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.google.gson.Gson"%>

   <%
   try{
     String s[]=null;

     Class.forName("com.mysql.jdbc.Driver");
     Connection con =DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
     Statement st=con.createStatement();
     ResultSet rs = st.executeQuery("select nom,prenom from medecin ");

       List li = new ArrayList();

       while(rs.next())
       {
           li.add(rs.getString(1)+" "+rs.getString(2));
       }

       String[] str = new String[li.size()];
       Iterator it = li.iterator();

       int i = 0;
       while(it.hasNext())
       {
           String p = (String)it.next();
           str[i] = p;
           i++;
       }

   
       
     Gson g = new Gson();
      out.print(g.toJson(str));
    

rs.close();
st.close();
con.close();

}
catch(Exception e){
e.printStackTrace();
}


%>