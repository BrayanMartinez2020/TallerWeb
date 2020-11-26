package controlador;

import java.util.List;
import modelo.dao.ProductoDAO;
import modelo.dto.ProductoDTO;

/**
 *
 * @author Brayan David Martinez Calvo - 20182578036
 */
public class Facade 
{
    public boolean crearProducto(ProductoDTO objP)
    {
        boolean rta = false;
        if(objP !=null)
        {
            ProductoDAO dao = new ProductoDAO();
            rta  = dao.create(objP);
        }
        return rta;
    }
    public List<ProductoDTO> listarProductos()
    {
        List<ProductoDTO> lst = null;
        ProductoDAO dao = new ProductoDAO();
        lst = dao.readAll();
        return lst;
    }
    
}
