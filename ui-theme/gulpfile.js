var gulp = require('gulp');
var concat = require('gulp-concat');
var clean = require('gulp-clean');
var connect = require('gulp-connect');
var stylus = require('gulp-stylus');
var jade = require('gulp-jade');



gulp.task('stylesheets:stylus', function() {
    return gulp.src('./src/styles/*.styl')
        .pipe(stylus({
            'include css': true,
            'compress': true
        }))
        .pipe(concat('style.css'))
        .pipe(gulp.dest('./dist/css'))
        .pipe(connect.reload());
});

gulp.task('templates', function () {
  return gulp.src('./src/**/**.jade')
    .pipe(jade({
      // pretty: true
    }))
    .pipe(gulp.dest('./dist'));
});

gulp.task('clean', function() {
    return gulp.src('./dist')
        .pipe(clean());
});

gulp.task('watch', ['clean'], function() {
    gulp.watch('./src/*.html', ['templates']);
    gulp.watch('./src/styles/*.styl', ['stylesheets:stylus']);
});

gulp.task('connect', function() {
    connect.server({
        root: 'dist',
        livereload: true,
        port: 3000
    });
});



gulp.task('default', ['clean'], function() {
    gulp.start('stylesheets:stylus', 'templates','watch', 'connect');
});
