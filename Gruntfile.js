'use strict'
const util = require('util')
module.exports = function (grunt) {
  grunt.initConfig({
    sprite: {
      all: {
        src: 'src/*.png',
        dest: 'dist/font-awesome.png',
        destCss: 'dist/css/font-awesome.css',
        retinaSrcFilter: 'src/*@2x.png',
        retinaDest: 'dist/font-awesome@2x.png',
        engine: 'pixelsmith',
        cssOpts: {
          cssSelector: function (item) {
            return util.format('.fa-%s', item.name)
          }
        }
      }
    }
  })
  grunt.loadNpmTasks('grunt-spritesmith')
  grunt.registerTask('default', ['sprite'])
}
