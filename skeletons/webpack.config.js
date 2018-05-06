const path = require('path');

module.exports = {
  //production|development|none
  mode: 'production',
  entry: {
    app: './src/app.ts'
  },
  output: {
    path: path.resolve(__dirname, './dist'),
    filename: '[name].bundle.js'
  },
  devtool: 'source-map',
  resolve: {
    extensions: [ '.tsx', '.ts', '.js' ]
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: {
            loader: 'ts-loader',
            options: {}
        },
        exclude: /node_modules/
      }
    ]
  }
};
