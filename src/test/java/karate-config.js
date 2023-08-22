function fn() {
    var env = karate.env; // get java system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'stage'; // a custom 'intelligent' default
    }
    var config = { // base config JSON
        urlBase: "https://api.demoblaze.com"
    };
    if (env == 'stage') {
        // over-ride only those that need to be
    } else if (env == 'production') {
        // over-ride only those that need to be
    }
    return config;
}