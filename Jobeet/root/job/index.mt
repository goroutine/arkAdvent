? extends 'common/base';

? block stylesheets => sub {
<link rel="stylesheet" type="text/css" href="<?= $c->uri_for('/css/main.css') ?>" />
<link rel="stylesheet" type="text/css" href="<?= $c->uri_for('/css/jobs.css') ?>" />
? }

? block content => sub {
<div id="jobs">
? for my $category ($c->stash->{categories}->all) {
    <div class="category_<?= lc $category->name ?>">
      <div class="category">
        <div class="feed">
          <a href="">Feed</a>
        </div>
        <h1><?= $category->name ?></h1>
      </div>

      <table class="jobs">
? my $i = 0;
? for my $job ($category->get_active_jobs) {

hoge
? } #endfor $job
      </table>
    </div>
? } #endfor $category
</div>
? } #endblock content