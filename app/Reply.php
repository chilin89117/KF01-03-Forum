<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
  protected $fillable = 
    ['user_id', 'discussion_id', 'content'];

  public function discussion()
  { return $this->belongsTo(Discussion::class); }

  public function user()
  { return $this->belongsTo(User::class); }

  public function likes()
  { return $this->hasMany(Like::class); }

  public function is_liked_by_user()
  {
    return $this->likes
                ->where('user_id', auth()->id())
                ->count();
  }
}
