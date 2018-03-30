/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package m2i.compethance.employeemaven;

import java.util.Date;

/**
 *
 * @author Formation
 */
public class Commande implements java.io.Serializable {

    private Integer id;
    private Client client;
    private String nomcde;
    private Date datecde;

    public Commande() {
    }

    public Commande(Client client, String nomcde, Date datecde) {
        this.client = client;
        this.nomcde = nomcde;
        this.datecde = datecde;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Client getClient() {
        return this.client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getNomcde() {
        return this.nomcde;
    }

    public void setNomcde(String nomcde) {
        this.nomcde = nomcde;
    }

    public Date getDatecde() {
        return this.datecde;
    }

    public void setDatecde(Date datecde) {
        this.datecde = datecde;
    }

}
