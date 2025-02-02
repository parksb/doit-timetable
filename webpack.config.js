const webpack = require('webpack');
const path = require('path');
const CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
  mode: 'development',
  entry: {
    index: './src/js/index.js',
    edit: './src/js/edit.js',
    signup: './src/js/signup.js',
    teamtable: './src/js/teamtable.js',
    teamlist: './src/js/teamlist.js',
    main: './src/js/main.js',
    setting: './src/js/setting.js',
    newteam: './src/js/newteam.js'
  },
  output: {
    path: path.join(__dirname, './dist/src/'),
    filename: '[name].min.js'
  },
  devServer: {
    contentBase: path.join(__dirname, './dist/'),
    compress: true,
    port: 9000
  },
  plugins: [
    new CopyWebpackPlugin([
      {
        from: path.join(__dirname, './public/'),
        to: path.join(__dirname, './dist/')
      }, {
        from: path.join(__dirname, './src/php/'),
        to: path.join(__dirname, './dist/src/php/')
      }
    ])
  ],
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['env']
          },
        }
      }, {
        test: /\.css$/,
        loader: 'style-loader!css-loader'
      }, {
        test: /\.json$/,
        loader: 'json-loader'
      }
    ]
  },
  resolve: {
    modules: ['node_modules'],
    extensions: ['.webpack.js', '.web.js', '.js', '.json', 'css']
  },
  node: {
    console: false,
    global: true,
    process: true,
    Buffer: true,
    setImmediate: true,
    fs: 'empty',
    net: 'empty',
    tls: 'empty'
  }
};