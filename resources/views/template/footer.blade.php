<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="{!! asset('../js/app.js') !!}"></script>
    <!-- <script src="{!! asset('../js/form.js') !!}"></script> -->

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>

    <!-- DataTables -->
    <script src="{!! asset('../plugins/datatables/jquery.dataTables.min.js') !!}"></script>
    <script src="{!! asset('../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') !!}"></script>
    <script src="{!! asset('../plugins/datatables-responsive/js/dataTables.responsive.min.js') !!}"></script>
    <script src="{!! asset('../plugins/datatables-responsive/js/responsive.bootstrap4.min.js') !!}"></script>

    <script>
      $(function () {
        $("#table1").DataTable({
          "responsive": true,
          "autoWidth": false,
        });
        $('#table2').DataTable({
          "paging": true,
          "lengthChange": true,
          "searching": true,
          "ordering": true,
          "info": true,
          "autoWidth": true,
          "responsive": true,
        });
      });
    </script>

    <script>
      feather.replace()
    </script>

  </body>
</html>