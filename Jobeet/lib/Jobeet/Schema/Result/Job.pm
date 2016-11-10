package Jobeet::Schema::Result::Job;
use v5.22.2;
use strict;
use warnings;
use parent 'Jobeet::Schema::ResultBase';
use Jobeet::Schema::Types;

# ここにテーブル定義を書く

__PACKAGE__->table('jobeet_job');

__PACKAGE__->add_columns(
    id => PK_INTEGER,
    category_id => INTEGER,
    type => VARCHAR(
        is_nullable => 1
    ),
    position => VARCHAR,
    company => VARCHAR(
        is_nullable => 1
    ),
    logo => VARCHAR(
        is_nullable => 1
    ),
    url => VARCHAR(
        is_nullable => 1
    ),
    location => VARCHAR,
    description => {
        data_type   => 'TEXT',
        is_nullable => 0,
    },
    how_to_apply => {
        data_type   => 'TEXT',
        is_nullable => 0,
    },
    token => VARCHAR,
    is_public => TINYINT,
    is_activated => TINYINT,
    email => VARCHAR,
    expires_at => DATETIME,
    created_at => DATETIME,
    updated_at => DATETIME,
#    hhogehogheoghe => VARCHAR,

);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint(['token']);

__PACKAGE__->belongs_to( category => 'Jobeet::Schema::Result::Category', 'category_id' );

1;

    
