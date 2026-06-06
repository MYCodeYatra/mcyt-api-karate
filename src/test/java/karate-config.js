function fn() {
  var env = karate.env; // get system property 'karate.env'
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    baseUrl: 'https://reqres.in/api'
  };
  return config;
}
