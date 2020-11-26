package conexiones;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.util.logging.PlatformLogger;

/**
 *
 * @author Brayan David Martinez Calvo- 20182578036
 */
public class ConexionMsql 
{
    public static ConexionMsql instance;
    private Connection cnn;
    
    private ConexionMsql()
    {
        try
        {
           Class.forName("com.mysql.jdbc.Driver");
           try
           {
               cnn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_tallerjavaweb","root","");
               
           }catch(SQLException ex)
           {
               Logger.getLogger(ConexionMsql.class.getName()).log(Level.SEVERE,null,ex);
           }
        }catch( ClassNotFoundException ex)
        {
            Logger.getAnonymousLogger(ConexionMsql.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static synchronized ConexionMsql getInstance()
    {
        if(instance==null)
        {
            instance= new ConexionMsql();
        }
        return instance;
    }
    
    public Connection getCnn()
    {
        return cnn;
    }
    
    public void cerrarConexion()
    {
        instance=null;
    }
    
}
