/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package m2i.compethance.employeemaven;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Formation
 */
public class GestionCommande {
    private static Session sess = NewHibernateUtil.getSessionFactory().openSession();
       
       public static List<Commande> getAllCommandes()
       {
           String QUERY = "FROM Commande" ;
           Query query = sess.createQuery( QUERY ) ;

           return (List<Commande>) query.list();
       }
}
