<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Watcher extends Model
{
  protected $guarded = [];

  public function user()
  {
    return $this->belongsTo(User::class);
  }

  public function discussion()
  {
    return $this->belongsTo(Discussion::class);
  }
}
