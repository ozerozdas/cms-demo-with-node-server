@extends('base')
@section('body')
    <h1 class="text-center mb-5">Customer List with Datatable</h1>

    <div class="mb-lg-5" style="max-width: 1600px; margin: 0 auto">
        <table id="customerList" class="table table-bordered table-striped data-table" style="width:100%;">
            <thead>
            <tr>
                <th>Full Name</th>
                <th>Email</th>
                <th>Password (Crypted)</th>
                <th>Birth Date</th>
                <th>Is Deleted?</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
@stop
@section('stylesheets')
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
@stop
@section('scripts')
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript">
        let endpoint = 'http://127.0.0.1:3000/api/customer';
        $(function () {

            var table = $('.data-table').DataTable({
                ajax: endpoint,
                columns: [
                    { data: 'full_name', name: 'full_name' },
                    { data: 'email', name: 'email' },
                    { data: 'password', name: 'password' },
                    { data: 'birth_date', name: 'birth_date' },
                    {
                        data: 'is_deleted',
                        render: function(data) {
                            if(data) {
                                return 'Deleted';
                            } else {
                                return '-'
                            }

                        },
                        defaultContent: '-'
                    }
                ]
            });

        });
    </script>
@stop
