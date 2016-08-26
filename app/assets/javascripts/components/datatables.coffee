$(document).on 'turbolinks:load', ->
  $('#datatable').DataTable({
    "language": {
      "url": "/datatables-spanish.lang"
    }
  })
