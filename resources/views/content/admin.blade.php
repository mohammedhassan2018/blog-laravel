@extends('master')

@section('content')
<br> <br> <br> <br>
<div class="col-md-8">
<div>
<table class="table table-hover">
<tr>
<th>#</th>
<th>Name</th>
<th>Email</th>
<th>User</th>
<th>Editor</th>
<th>Admin</th>
</tr>

@foreach($users as $user)
<form method="post" action="add-role">
{{csrf_field()}}
<input type="hidden" name="email" value="{{$user->email}}">
<tr>
<th>{{$user->id}}</th>
<td>{{$user->name}}</td>
<td>{{$user->email}}</td>
<td>
<input type="checkbox" name="role_user" onChange="this.form.submit()" 
{{$user->hasRole('User') ? 'checked' : ' '}} >
</td>
<td>
<input type="checkbox" name="role_editor" onChange="this.form.submit()" 
{{$user->hasRole('Editor') ? 'checked' : ' '}} >
</td>
<td>
<input type="checkbox" name="role_admin" onChange="this.form.submit()" 
{{$user->hasRole('Admin') ? 'checked' : ' '}} >
</td>
</form>
@endforeach
</tr>

</table>

</div>

<div>
<form method="post" action="settings">
{{csrf_field()}}

<h3>Settings</h3>

Stop comment: <input type="checkbox" name="stop_comment" onChange="this.form.submit()"
{{$stop_comment == 1 ? 'checked' : ' '}}>

<br> <br>

Stop registration: <input type="checkbox" name="stop_register" onChange="this.form.submit()"
{{$stop_register == 1 ? 'checked' : ' '}}>

</form>
</div>

</div>
@stop
