<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;

class DefaultController extends Controller{

    public function index(){
        return view('index', [
            'title' => 'Home'
        ]);
    }

    public function customers(){
        return view('customers/customers', [
            'title' => 'Customers'
        ]);
    }

    public function customersWithDatatable(){
        return view('customers/customers-with-datatables', [
            'title' => 'Customers'
        ]);
    }

}
