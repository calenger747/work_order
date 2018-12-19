<?php 

  include('config/koneksi.php');
?>

<div class="col-md-12 col-sm-12 col-xs-12">

                <div class="x_panel">
                  <div class="x_title">
                    <h2>Subcon - Freelancer Technician Name <small>Nama Teknisi Subcon - Freelancer</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                    
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap table-hover">
                      <thead>
                        <tr>
                          <th>NIK</th>
                          <th>Name</th>
                          <th>Position</th>
                          <th>No. Handphone</th>
                        </tr>
                      </thead>


                      <tbody>
                        <?php 

                          $query=mysqli_query($con,"SELECT * FROM pegawai, bagian WHERE pegawai.id_bag = bagian.kd_bag AND pegawai.kdstatusp = '4' AND pegawai.kdstatusp = '5'") or die(mysqli_error($con));
                          $no = 0;
                          while($row=mysqli_fetch_array($query)){
                            $no++;
                            ?>
                            <tr>
                              <td><?php echo $row['nip']; ?></td>
                              <td><?php echo $row['nama']; ?></td>
                              <td><?php echo $row['n_bag']; ?></td>
                              <td><?php echo $row['nohp']; ?></td>
                            </tr>
                            <?php
                          }
                   
                        ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

   <!-- Modal -->
  <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Edit Data Technician PKL</h4>
        </div>
        <!-- memulai untuk konten dinamis -->
        <!-- lihat id="data_siswa", ini yang di pangging pada ajax di bawah -->
        <div class="modal-body" id="data_siswa">
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript">
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal({show: true});
    });
    $("#myBtn2").click(function(){
        $("#myModal2").modal({show: true});
    });
});
</script>

<script>
  // ini menyiapkan dokumen agar siap grak :)
  $(document).ready(function(){
    // yang bawah ini bekerja jika tombol lihat data (class="view_data") di klik
    $('.view_data').click(function(){
      // membuat variabel id, nilainya dari attribut id pada button
      // id="'.$row['id'].'" -> data id dari database ya sob, jadi dinamis nanti id nya
      var id = $(this).attr("id");

      $id = document.getElementById('id');
      
      // memulai ajax
      $.ajax({
        success:function(){   // kode dibawah ini jalan kalau sukses
          $('#myModal2').modal("show");  // menampilkan dialog modal nya
        }
      });
    });
  });
  </script>

  <script>
        $(function(){
            $(document).on('click','.edit-record',function(e){
                e.preventDefault();
                $("#myModal2").modal('show');
                $.post('reference/view.php',
                    {id:$(this).attr('data-id')},
                    function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
        });
    </script>
