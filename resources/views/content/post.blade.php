@extends('master')

@section('content')
                 <br> <br>
            <h1 class="page-header">
                    Page Heading
                    <small>Secondary Text</small>
                </h1>

                <!-- First Blog Post -->
                <h2>
                    <a href="#">{{$post->title}}</a>
                </h2>

                <p class="lead">
                    by <a href="index.php">{{Auth::user()->name}}</a>
                </p>

                <p><span class="glyphicon glyphicon-time"></span> Posted on {{$post->created_at}}
                <strong>Category:</strong>
                <a href="../category/{{$post->category->name}}">
                 {{$post->category->name}}
                </a>
                </p>
      
                @if($post->urls)
                <p><img src="../upload/{{$post->urls}}"></p>
                @endif

                <p>{{$post->body}}</p>  
                <hr>

                <br>
                <div class="comments">

                @foreach ($post->comments as $comment)
                <p class="comment">{{ $comment->body }}</p>
                @endforeach

                </div>
                <br>

                @if ($stop_comment == 1)
                <h3>Oops!! Comments are currently closed !!</h3>
                @else
                <form method="POST" action="{{$post->id}}/store">
                {{ csrf_field() }}

                <div class="form-group">
                <label for="body">Write something</label>
                <textarea name="body" id="body" class="form-control"></textarea>
                </div>

                <div class="form-group">
                <button type="submit" class="btn btn-primary">Add comment</button>
                </div>
                </form>
                @endif             

                <!-- Pager -->
            <!--    <ul class="pager">
                    <li class="previous">
                        <a href="#">&larr; Older</a>
                    </li>
                    <li class="next">
                        <a href="#">Newer &rarr;</a>
                    </li>
                    </ul> 
            --> 

@stop