package users.post;

import com.intuit.karate.junit5.Karate;


public class UserPostRunner {
    @Karate.Test
    Karate userGet() {
        return Karate.run("user_post").relativeTo(getClass());
    }
}
