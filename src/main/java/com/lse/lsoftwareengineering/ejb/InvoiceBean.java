/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatefulEjbClass.java to edit this template
 */
package com.lse.lsoftwareengineering.ejb;

import javax.ejb.Stateful;
import javax.enterprise.context.SessionScoped;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author homer
 */

@SessionScoped

@Stateful
public class InvoiceBean {

    private Set<Integer> userIds = new HashSet<Integer>();

    public Set<Integer> getUserIds(){
        return userIds;
    }

    public void setUserIds(Set<Integer> userIds) {
        this.userIds = userIds;
    }



    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
