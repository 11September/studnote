<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class UserGroup extends Model
{
    protected $table = 'user_groups';

    public function users()
    {
        return $this->hasMany(User::class, 'id', 'user_id');
    }

    public function groups()
    {
        return $this->hasMany(Group::class, 'id', 'group_id');
    }
}
