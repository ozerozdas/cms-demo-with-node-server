@extends('base')
@section('body')
    <h1 class="text-center mb-5">Customer List</h1>

    <table id="customerList" class="table table-bordered table-striped mb-lg-5" style="width:100%; max-width: 1600px; margin: 0 auto">
        <thead>
        <tr>
            <th>Full Name</th>
            <th>Email</th>
            <th>Password (Crypted)</th>
            <th>Birth Date</th>
            <th>Is Deleted?</th>
        </tr>
        </thead>
        <tbody></tbody>
    </table>
@stop
@section('stylesheets')

@stop
@section('scripts')
<script>
    $(document).ready(function (){
        loadCustomerList();
    });

    let endpoint = 'http://127.0.0.1:3000/api/customer';
    // let endpoint = 'https://randomuser.me/api/?results=10';

    function loadCustomerList(){
        let body = $('#customerList tbody');
        body.html('');
        fetch(endpoint)
        .then((resp) => resp.json())
        .then(function(result) {
            if (result.status){
                let rows = "";
                $.each(result.data, function(index, value){
                    rows += "<tr>" +
                        "<td>" + value.full_name + "</td>" +
                        "<td>" + value.email + "</td>" +
                        "<td>" + value.password + "</td>" +
                        "<td>" + value.birth_date + "</td>" +
                        "<td>" + (value.is_deleted == 0 ? '-' : 'Deleted') + "</td>" +
                        "</tr>";
                });
                body.html(rows);
            }else{
                body.html("<tr>" +
                    "<td colspan='5' align='center'>There is no record</td>" +
                    "</tr>");
            }
        })
        .catch(function(error) {
            body.html("<tr>" +
                "<td colspan='5' align='center'>There is no record</td>" +
                "</tr>");
            console.log(error);
        });
    }
</script>
@stop
