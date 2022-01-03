package com.lse.lsoftwareengineering.ejb;

import com.lse.lsoftwareengineering.entity.User;
import com.lse.lsoftwareengineering.common.*;
import com.lse.lsoftwareengineering.common.UserDetails;

import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Stateless
public class UserBean {

    private static final Logger LOG = Logger.getLogger(UserBean.class.getName());

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @PersistenceContext
    private EntityManager em;

    public List<UserDetails> getAllUsers(){
        LOG.info("getAllUsers");
        try{
            Query query = em.createQuery("SELECT u FROM User u");
            List<User> users = (List<User>) query.getResultList();
            return copyUsersToDetails(users);
        }
        catch(Exception ex){
            throw new EJBException(ex);
        }
    }

    private List<UserDetails> copyUsersToDetails(List<User> users){
        List<UserDetails> detailsList = new ArrayList<>();
        for(User user : users){
            UserDetails userDetails = new UserDetails(
                    user.getId(),
                    user.getUsername(),
                    user.getEmail(),
                    user.getPosition(),
                    user.getPassword());
            detailsList.add(userDetails);
        }
        return detailsList;
    }

    public void createUser(String username, String email, String passwordSha256, String position){
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(passwordSha256);
        user.setPosition(position);

        em.persist(user);
    }
}
