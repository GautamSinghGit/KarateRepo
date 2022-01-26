function fn() {   
  var env = karate.env;

   // get java system property 'karate.env'
  									//karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    //appId: 'my.app.id',
   // appSecret: 'my.secret',
   myVarName:'hellp karate welcome to intellij',
    BaseUrl: 'https://gorest.co.in',
    tokenId:'3f7be8bc48f4d0117e65ae111383a761a4db864ec827717a139654c6cc1a2086'
   // anotherUrlBase: 'https://another-host.com/v1/'
  };
  if (env == 'stage') {
    // over-ride only those that need to be
   // config.BaseUrl = 'https://stage-host/v1/auth';
  } else if (env == 'e2e') {
    //config.BaseUrl = 'https://e2e-host/v1/auth';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
 // karate.configure('connectTimeout', 5000);
 // karate.configure('readTimeout', 5000);
  return config;
}