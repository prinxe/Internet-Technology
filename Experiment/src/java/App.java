import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 

public class App{
 
    private final String url = "jdbc:postgresql://localhost/postgres";
    private final String user = "postgres";
    private final String password = "pass";
 
    /**
     * Connect to the PostgreSQL database
     *
     * @return a Connection object
     */
    public Connection connect() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to the PostgreSQL server successfully.");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
 
        return conn;
    }
 
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        App app = new App();
        app.connect();
    }
}

/*public static void main(String[] args) throws SQLException{
Connection cDB = getConnect();
if(cDB!=null){
System.out.println("connection done \n");
Statement st = null;
String sql="Select * from public.\"User\"";
try{ st=cDB.createStatement();
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
String Name = rs.getString("name");
String Roll = rs.getString("roll");
System.out.println(Name+" "+Roll+"\n");
}
} catch(Exception e){
System.out.println(e+"\n");
}
}
cDB.close();}*/