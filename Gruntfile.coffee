module.exports = ( grunt ) ->

  grunt.initConfig

    watch:
      sass:
        files: [ 'sass/**' ],
        tasks: [ 'sass' ]

    sass:
      dist:
        files:
          'red-skies/assets/style.css': [ 'sass/main.scss' ]


  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-sass'

  grunt.registerTask 'default', [ 'sass', 'watch' ]
