/* eslint-disable no-param-reassign */

const creatorData = {
  chiselVersion: '1.0.0-alpha.10',
  app: {
    name: 'Xfive',
    author: 'Artur Kowalczyk',
    projectType: 'wp-with-fe',
    browsers: ['modern', 'edge18'],
    nameSlug: 'xfive',
    hasJQuery: false,
  },
  wp: {
    title: 'Xfive Recruitment Task',
    url: 'xfive.task',
    adminUser: 'admin',
    adminEmail: 'arturkowalczyc@wp.pl',
    tablePrefix: 'mzptrgs7_',
  },
  wpPlugins: {
    plugins: [
      'Classic Editor',
      'WP Premium: Advanced Custom Fields Pro',
      'WP Sync DB',
      'WP Sync DB Media File Addon',
    ],
  },
};

const wp = {
  directoryName: 'wp',
  themeName: 'xfive-chisel',
  url: 'xfive.task',
};

module.exports = {
  creatorData,

  wp,

  output: {
    base: `${wp.directoryName}/wp-content/themes/${wp.themeName}/dist`,
  },

  // To use React and hot reload for React components:
  // 1. Run `yarn add react-hot-loader @hot-loader/react-dom`
  // 3. Mark your root component as hot-exported as described on
  //    https://github.com/gaearon/react-hot-loader#getting-started (step 2)
  // 4. Uncomment line below
  // react: true,

  plugins: ['chisel-plugin-code-style', 'chisel-plugin-wordpress'],
};
