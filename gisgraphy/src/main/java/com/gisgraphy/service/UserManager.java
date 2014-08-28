/*******************************************************************************
 *   Gisgraphy Project 
 * 
 *   This library is free software; you can redistribute it and/or
 *   modify it under the terms of the GNU Lesser General Public
 *   License as published by the Free Software Foundation; either
 *   version 2.1 of the License, or (at your option) any later version.
 * 
 *   This library is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 *   Lesser General Public License for more details.
 * 
 *   You should have received a copy of the GNU Lesser General Public
 *   License along with this library; if not, write to the Free Software
 *   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA
 * 
 *  Copyright 2008  Gisgraphy project 
 *  David Masclet <davidmasclet@gisgraphy.com>
 *  
 *  
 *******************************************************************************/
package com.gisgraphy.service;

import java.util.List;

import org.springframework.security.userdetails.UsernameNotFoundException;

import com.gisgraphy.dao.UserDao;
import com.gisgraphy.model.User;

/**
 * Business Service Interface to handle communication between web and
 * persistence layer.
 * 
 * @author <a href="mailto:matt@raibledesigns.com">Matt Raible</a> Modified by
 *         <a href="mailto:dan@getrolling.com">Dan Kibler </a>
 */
public interface UserManager extends UniversalManager {

    /**
     * Convenience method for testing - allows you to mock the DAO and set it on
     * an interface.
     * 
     * @param userDao
     *                the UserDao implementation to use
     */
    void setUserDao(UserDao userDao);

    /**
     * Retrieves a user by userId. An exception is thrown if user not found
     * 
     * @param userId
     *                the identifier for the user
     * @return User
     */
    User getUser(String userId);

    /**
     * Finds a user by their username.
     * 
     * @param username
     *                the user's username used to login
     * @return User a populated user object
     * @throws org.acegisecurity.userdetails.UsernameNotFoundException
     *                 exception thrown when user not found
     */
    User getUserByUsername(String username) throws UsernameNotFoundException;

    /**
     * Retrieves a list of users, filtering with parameters on a user object
     * 
     * @param user
     *                parameters to filter on
     * @return List
     */
    List<User> getUsers(User user);

    /**
     * Saves a user's information
     * 
     * @param user
     *                the user's information
     * @throws UserExistsException
     *                 thrown when user already exists
     * @return user the updated user object
     */
    User saveUser(User user) throws UserExistsException;

    /**
     * Removes a user from the database by their userId
     * 
     * @param userId
     *                the user's id
     */
    void removeUser(String userId);
}
