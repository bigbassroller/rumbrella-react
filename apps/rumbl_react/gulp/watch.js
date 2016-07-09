var gulp = require('gulp');


gulp.task('watch', function() {
  return gulp.watch('./web/static/**/*.{js,scss}', ['build']);
});
