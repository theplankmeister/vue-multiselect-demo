const babelify = require('babelify');
const browserify = require('browserify')
const gulp = require('gulp');
const source = require('vinyl-source-stream')
const vueify = require('vueify')

gulp.task('default', () => browserify('./src/demo.js')
    .transform(babelify)
    .transform(vueify)
    .bundle()
    .pipe(source('demo.min.js'))
    .pipe(gulp.dest('./public/'))
)