'use strict';

    function getAllReleases(request) {
      return request({
        url: 'https://raw.githubusercontent.com/yasserare/manifest/master/qljs.json',
        json: true,
      }).then(function (resp) {
        const all = resp.body;
        return(all);
      }
      )
};

module.exports = getAllReleases;


if (module === require.main) {
  module.exports(require('@root/request')).then(function (all) {
    all = require('../_webi/normalize.js')(all);
    // just select the first 5 for demonstration
    all.releases = all.releases.slice(0, 5);
    console.info(JSON.stringify(all, null, 2));
  });
}
