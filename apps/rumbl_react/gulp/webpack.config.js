var path = require('path');

module.exports = {
    entry: "./web/static/js/react-app.js",
    output: {
        filename: "./priv/static/js/bundle.js",
        sourceMapFilename: "./priv/static/js/bundle.map"
    },
    devtool: '#source-map',
    module: {
        loaders: [
            {
                loader: 'babel',
                exclude: /node_modules/
            }
        ]
    }
}
