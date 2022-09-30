/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aes;

/**
 *
 * @author alumno
 */
public class main {
    public static void main(String[] args) throws Exception{
    String mensaje = " Habia una vez una patitio que tenia una vergota demierda ";
    String mensajecifrado=AES.cifrar(mensaje);
    String mensajedecifrado= AES.decifrar(mensajecifrado);
        System.out.println("El mensaje a cifrar:" + mensaje);
        System.out.println("El mensaje cifrado es: "+mensajecifrado);
        System.out.println("El mensaje decifrado es: "+mensajedecifrado);
    }
}
