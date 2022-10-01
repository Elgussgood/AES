/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aes;
import java.security.*;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import sun.misc.*;
//para poder generar una clave secreta de mayor 
//logitud


/**
 *
 * @author alumno
 */
public class AES {
    //vamos a generar una llave 
    public static final byte[] keyvalue =new byte[]{
    /*puede ser de 3 tamañnos
        128 -> 16 caracteres para 9 rondas 
        192 -> 24 caracteres para 11 rondas 
        256 -> 32 caracteres para 13 rondas 
        */
        'q','w','e','r','t','y','u','i',
        'q','w','e','r','t','y','u','i',
    };
    private static final String instancia= "AES";
    //vamos a crear los metodos para cifrar
    public static String cifrar(String Data) throws Exception{
        /*para poder cifrar debemos de generar las 
        llaves pero vamos a crear un metodo para esa generacion de las subllaves 
        */
        
        //vamos a ocupar un objeto Key
        Key llave = generarLlave();
        //inicializamos el cifrado
        Cipher cifrado= Cipher.getInstance(instancia);
        
        cifrado.init(Cipher.ENCRYPT_MODE, llave);
        //vamos a obtener el mensjae y hay que transformarlo en bytes
        byte[] encValores = cifrado.doFinal(Data.getBytes());
        
        //tenemos un problema el cual es el formato para poder leerlo
        //tenemos que aplicar un formato BASE64
        System.out.println("Valores din formato: "+encValores);
        //aplicamos formato
        String valoresencriptados = new BASE64Encoder().encode(encValores);
        System.out.println("Valores con formato: "+ valoresencriptados);
        return valoresencriptados;
    }
    
    
    public static String decifrar(String valoresencriptados) throws Exception{
        /*para poder cifrar debemos de generar las 
        llaves pero vamos a crear un metodo para esa generacion de las subllaves 
        */
        
        //vamos a ocupar un objeto Key
        Key llave = generarLlave();
        //inicializamos el cifrado
        Cipher cifrado= Cipher.getInstance(instancia);
        
        cifrado.init(Cipher.DECRYPT_MODE, llave);
        //vamos a obtener el mensjae y hay que decodificarlo en bytes
        byte[] valoresdecodificados = new BASE64Decoder().decodeBuffer(valoresencriptados);
        
        byte[] decValores=cifrado.doFinal(valoresdecodificados);
        System.out.println("Valores sin formato: "+decValores);
       
        //tenemos un problema el cual es el formato para poder leerlo
        //tenemos que aplicar un formato BASE64
        //aplico un formato de cadena
        String valroesdecifrados = new String(decValores);
        System.out.println("Valores con formato: "+valroesdecifrados);
        return valroesdecifrados;
        
    }
    private static Key generarLlave() throws Exception{
    /*vamos a ocupar las llaves de ars de acuerdo a ala 
clse SecretKeySpec esta nos genera tosdas las subllaves de ronda*/
    Key Llave = new SecretKeySpec(keyvalue, instancia);
            return Llave;
    }
}
