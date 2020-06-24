<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
      <button type="button" class="btn btn-primary btn-lg btn-block">로그아웃</button>
    </div>
  </aside>
  <!-- /.control-sidebar -->
  
 <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2014-2020 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->



<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.min.js"></script>


<!-- jQuaery 아래에 붙여넣어야 함 -->
<!-- class는 이름에 공백이 있을시, 여러 클래스로 취급 -->
<!-- 클래스명 사용시, 중복되지 않는 클래스 명으로 지정하여, 추후에 생길 수 있는 오류의 가능성을 배제한다. //ID=# //Class=. -->
<!-- 버튼활성화는 되었으나, admin 화면에서 두가지 버튼이 동시 활성화 현상=> alert();을 이용하여 문제 확인 -->
<!-- css와 jQuery는 연동. 항상 같이 사용한다고 생각하면 됨 -->
<script>
$(document).ready(function() {
    var current = location.pathname;
    $('.nav-treeview li a').each(function(){
    	// 가독성을 위하여 따로 클래스변수를 지정, 추후 코드를 읽을 시 해석에 용이함 
        var $this = $(this);
        // if current를 추가하여 "/admin" or "/admin/"에서 발생되는 버튼 활성화 현상을 제거 한다.
        // || = and/or
        if(current=="/admin" || current=="/admin/"){
        	
        }else{
        	if($this.attr('href').includes(current) == true){
           	 	$this.addClass('active');
        	}else{
        		$this.removeClass('active');
        	}
    	}
   })
 });
</script>

<!-- <script>
$(document).ready(function() {
    var current = location.pathname;
    $('.nav-treeview li a').each(function(){
        var $this = $(this);
        if($this.attr('href').includes(current) == true){
            $this.addClass('active');
            //alert(current)=debug code
           /*  alert(); */
        }else{
        	$this.removeClass('active');
        }
    })
 });
</script> -->

</body>
</html>