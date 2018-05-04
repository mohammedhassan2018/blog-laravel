@extends('master')

@section('content')
                 <br> <br>
            <h1 class="page-header">
                    Page Heading
                    <small>Secondary Text</small>
                </h1>

                <!-- First Blog Post -->
                @foreach($posts as $post)

                <h2>
                    <a href="posts/{{ $post->id }}">{{$post->title}}</a>
                </h2>

                <p class="lead">
                    by <a href="index.php">Start Bootstrap</a>
                </p>

                <p><span class="glyphicon glyphicon-time"></span>
                Posted on {{ $post->created_at }}
                </p>

                @if($post->urls)
                <p><img src="../upload/{{$post->urls}}"></p>
                @endif

                <p>{{$post->body}}</p>
                <a class="btn btn-primary" href="posts/{{ $post->id }}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                <hr>

                @endforeach

                <form method="POST" action="posts/store" enctype="multipart/form-data">
                {{ csrf_field() }}

                <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" id="title" class="form-control">
                </div>

                <div class="form-group">
                <label for="body">Body</label>
                <textarea name="body" id="body" class="form-control"></textarea>
                </div>

                <div class="form-group">
                <label for="urls">Image</label>
                <input type="file" name="urls" id="urls" class="form-control">
                </div>

                <div class="form-group">
                <button type="submit" class="btn btn-primary">Add post</button>
                </div>

                </form>

                <div>
                @foreach ($errors->all() as $error)
                {{$error}} <br>
                @endforeach
                </div>
                
                <!-- Pager -->
              <!--  <ul class="pager">
                    <li class="previous">
                        <a href="#">&larr; Older</a>
                    </li>
                    <li class="next">
                        <a href="#">Newer &rarr;</a>
                    </li>
                </ul>
               -->
@stop