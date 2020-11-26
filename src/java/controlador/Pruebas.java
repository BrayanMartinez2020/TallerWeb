package controlador;

import java.util.List;
import modelo.dto.ProductoDTO;

/**
 *
 * @author Brayan David Martinez Calvo - 20182578036
 */
public class Pruebas 
{
    public static void main(String [] args)
    {
        Facade obj  = new Facade();
        List<ProductoDTO> lst = null;
        lst = obj.listarProductos();
        if(lst != null)
        {
            for(ProductoDTO producto : lst)
            {
                System.out.println(producto);
            }
        }else
        {
            System.out.println("No hay productos");
        }
    }
   
}
