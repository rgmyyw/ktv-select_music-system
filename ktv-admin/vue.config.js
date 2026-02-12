const webpack = require("webpack");
module.exports = {
  devServer: {
    port: 8634, // 管理员面板运行在8634端口
  },
  configureWebpack: {
    plugins: [
      new webpack.ProvidePlugin({
        $: "jquery",
        jQuery: "jquery"
      })
    ],
    externals: 'hls.js'    //  忽略hls.js报的错
  }
}