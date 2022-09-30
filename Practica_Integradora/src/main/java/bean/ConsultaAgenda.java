package bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;

public class ConsultaAgenda {
    
    public static LinkedList<Contacto> getContactos()
   {
      LinkedList<Contacto> listaContactos=new LinkedList<Contacto>();
      try
      {
          Connection con=ConnectionProvider.getCon();            
          String consulta = "SELECT * FROM db_LPTI_II.dbo.t_usuario";
          ResultSet rs = null;
          PreparedStatement pst = null;
          pst = con.prepareStatement(consulta);
          rs = pst.executeQuery();
                         
        while (rs.next())
         {
            Contacto contacto = new Contacto();
            contacto.setId_usuario(rs.getInt("id_usuario"));
            contacto.setNombre(rs.getString("Nombre"));
            contacto.setApPaterno(rs.getString("ApPaterno"));
            contacto.setApMaterno(rs.getString("ApMaterno"));
            contacto.setTelefono(rs.getInt("telefono"));
            contacto.setEmail(rs.getString("email"));
            contacto.setDireccion(rs.getString("direccion"));
            listaContactos.add(contacto);
         }
         rs.close();
         pst.close();
         //con.close();
      }
      catch (Exception e)  {  e.printStackTrace();  }
      return listaContactos;
   }    
}
