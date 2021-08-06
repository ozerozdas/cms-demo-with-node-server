@extends('base')

@section('body')
    <h1 class="text-center">Home Page</h1>

    <div class="row" style="width: fit-content; margin: 0 auto;">
        <a href="{{ route('customers') }}" class="btn btn-primary d-inline">
            Customers
        </a>
        <a href="{{ route('customersWithDatatable') }}" class="btn btn-primary d-inline">
            Customers with Datatables
        </a>
    </div>
@stop
@section('stylesheets')
    <style>
        .row .btn{
            margin: 20px 50px;
            padding: 75px;
            min-width: 350px;
        }
    </style>
@stop
