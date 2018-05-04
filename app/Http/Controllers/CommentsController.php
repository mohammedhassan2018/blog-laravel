<?php

namespace App\Http\Controllers;

use App\Post;
use App\Comment;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentsController extends Controller
{
    public function store (Post $post, User $user)
    {
        $this->validate(request(), [
            'body'=>'required',
            ]);
        
        $comment = new Comment;
        $comment->body = request('body');
        $comment->post_id = $post->id;
        $comment->user_id = Auth::user()->id;
        $comment->save();
        return back();
    }
}
