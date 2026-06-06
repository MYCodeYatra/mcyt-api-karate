function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    env: env,
    baseUrl: 'http://localhost:8080/api'
  };

  if (env == 'qa') {
    config.baseUrl = 'http://localhost:8080/api';
  } else if (env == 'e2e') {
    config.baseUrl = 'http://localhost:8080/api';
  }

  return config;
}
