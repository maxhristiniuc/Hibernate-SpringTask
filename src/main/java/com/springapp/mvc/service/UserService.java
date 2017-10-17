package com.springapp.mvc.service;

import com.springapp.mvc.datasource.UsersDAO;
import com.springapp.mvc.model.Gender;
import com.springapp.mvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService {

    @Autowired
    private UsersDAO usersDatabase;

    @Transactional
    public boolean checkUser(User user) {
        for(User u: usersDatabase.getListOfUsers()) {
            if (user.equals(u))
                return true;
        }
        return false;
    }

    @Transactional
    public List<User> getAllUsers() {
        return usersDatabase.getListOfUsers();
    }

    @Transactional
    public List<User> getAllByGender(Gender gender) {
        return getAllUsers().stream()
                .filter(user -> user.getGender() == gender)
                .collect(Collectors.toList());
    }

    @Transactional
    public List<User> searchUsersByAgeAndGender(Integer age, Gender gender) {
        return getAllByGender(gender).stream()
                .filter(user -> user.getAge() == age)
                .collect(Collectors.toList());

//        return getAllUsers().stream()
//                .filter(user -> user.getGender() == gender && user.getAge() == age)
//                .collect(Collectors.toList());

//     for (User user : getAllUsers())
//     {
//         List<User> result = new LinkedList<>();
//         if (user.getGender() == gender)
//         {
//             result.add(user);
//         }
//     }
    }

}
