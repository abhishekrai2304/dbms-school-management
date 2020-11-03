<?php
session_start();
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{

if(isset($_POST['submit']))
{
$Code=$_POST['faccode'];
$Name=$_POST['facname'];
$Gender=$_POST['facgender'];
$Phonenum=$_POST['facnum'];
$Course = $_POST['faccourse'];
$ret=mysqli_query($con,"insert into faculty(code,name,gender,phonenum, course) values('$Code','$Name','$Gender','$Phonenum', '$Course')");
if($ret)
{
$_SESSION['msg']="Faculty Created Successfully !!";
}
else
{
  $_SESSION['msg']="Error : Faculty not created";
}
}
if(isset($_GET['del']))
      {
              mysqli_query($con,"delete from course where id = '".$_GET['id']."'");
                  $_SESSION['delmsg']="Course deleted !!";
      }
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Admin | Course</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
<?php include('includes/header.php');?>
    <!-- LOGO HEADER END-->
<?php if($_SESSION['alogin']!="")
{
 include('includes/menubar.php');
}
 ?>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
              <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Faculty  </h1>
                    </div>
                </div>
                <div class="row" >
                  <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           Faculty 
                        </div>
<font color="green" align="center"><?php echo htmlentities($_SESSION['msg']);?><?php echo htmlentities($_SESSION['msg']="");?></font>


                        <div class="panel-body">
                       <form name="dept" method="post">
   <div class="form-group">
    <label for="faccode">Faculty Code  </label>
    <input type="text" class="form-control" id="faccode" name="faccode" placeholder="Course Code" required />
  </div>

 <div class="form-group">
    <label for="facname">Faculty Name  </label>
    <input type="text" class="form-control" id="facname" name="facname" placeholder="Faculty Name" required />
  </div>

<div class="form-group">
    <label for="facgender">Faculty Gender  </label>
    <input type="text" class="form-control" id="facgender" name="facgender" placeholder="Faculty Gender" required />
  </div> 

<div class="form-group">
    <label for="facnum">Faculty Contact No  </label>
    <input type="text" class="form-control" id="facnum" name="facnum" placeholder="Faculty contatct No" required />
  </div> 
  <div class="form-group">
    <label for="faccourse">Faculty Course  </label>
    <input type="text" class="form-control" id="faccourse" name="faccourse" placeholder="Faculty Course Name" required />
  </div>  

 <button type="submit" name="submit" class="btn btn-default">Submit</button>
</form>
                            </div>
                            </div>
                    </div>
                  
                </div>
                <font color="red" align="center"><?php echo htmlentities($_SESSION['delmsg']);?><?php echo htmlentities($_SESSION['delmsg']="");?></font>
                <div class="col-md-12">
                    <!--    Bordered Table  -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Manage Faculty
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive table-bordered">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Faculty Code</th>
                                            <th>Faculty Name </th>
                                            <th>Faculty Gender</th>
                                            <th>Faculty Contact No</th>
                                            <th>Faculty Course Name</th>
                                             <!-- <th>Creation Date</th> -->
                                             <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<div>
  <!-- <form method="post"> 
        <input type="submit" name="course101"
                value="No of stud in c101"/> 
                 <input type="submit" name="course102"
                value="No of stud in c102"/> 
          <input type="submit" name="course103"
                value="No of stud in c103"/>
               <input type="submit" name="course104"
                value="No of stud in c104"/>
                <input type="submit" name="course105"
                value="No of stud in c105"/>
                <input type="submit" name="course106"
                value="No of stud in c106"/> 
                <input type="submit" name="course107"
                value="No of stud in c107"/> 
                <input type="submit" name="course108"
                value="No of stud in c108"/> <br><br>
 	<input type="submit" name="courses" value="No of Courses" />        
    </form>  -->
<!-- <button name = "num">No of Studs in C101</button> -->
</div>
<?php
// $c101=mysqli_query($con, "select courseCode from course where courseCode = 'c101' ");
// $c102=mysqli_query($con, "select courseCode from course where courseCode = 'c102' ");
// $c103=mysqli_query($con, "select courseCode from course where courseCode = 'c103' ");
// $c104=mysqli_query($con, "select courseCode from course where courseCode = 'c104' ");
// $c105=mysqli_query($con, "select courseCode from course where courseCode = 'c105' ");
// $c106=mysqli_query($con, "select courseCode from course where courseCode = 'c106' ");
// $c106=mysqli_query($con, "select courseCode from course where courseCode = 'c107' ");
// $c106=mysqli_query($con, "select courseCode from course where courseCode = 'c108' ");
// //$row1=mysqli_fetch_array($numstud);
// $numofcourses = mysqli_query($con, "select distinct courseName  from course ");

// if(isset($_POST['course101'])) { 
//            echo "Ans:" . mysqli_num_rows($c101);
// } 
// if(isset($_POST['course102'])) { 
//            echo "Ans:" . mysqli_num_rows($c102);
// }
// if(isset($_POST['course103'])) { 
//            echo "Ans:" . mysqli_num_rows($c103);
// }
// if(isset($_POST['course104'])) { 
//            echo "Ans:" . mysqli_num_rows($c104);
// }
// if(isset($_POST['course105'])) { 
//            echo "Ans:" . mysqli_num_rows($c105);
// } 
// if(isset($_POST['course106'])) { 
//            echo "Ans:" . mysqli_num_rows($c106);
// } 
// if(isset($_POST['course107'])) { 
//            echo "Ans:" . mysqli_num_rows($c107);
// } 
// if(isset($_POST['course108'])) { 
//            echo "Ans:" . mysqli_num_rows($c108);
// } 
// if(isset($_POST['courses'])){
// echo "Ans:" . mysqli_num_rows($numofcourses);	
// }
//echo  "<h1>" . $row1 . "</h1>";

$sql=mysqli_query($con,"select * from faculty");

$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>


                                        <tr>
                                            <td><?php echo $cnt;?></td>
                                            <td><?php echo htmlentities($row['code']);?></td>
                                            <td><?php echo htmlentities($row['name']);?></td>
                                            <td><?php echo htmlentities($row['gender']);?></td>
                                             <td><?php echo htmlentities($row['phonenum']);?></td>
                                            <td><?php echo htmlentities($row['courseName']);?></td>
                                            <td>
                                            <a href="edit-course.php?id=<?php echo $row['id']?>">
<button class="btn btn-primary"><i class="fa fa-edit "></i> Edit</button> </a>                                        
  <a href="course.php?id=<?php echo $row['id']?>&del=delete" onClick="return confirm('Are you sure you want to delete?')">
                                            <button class="btn btn-danger">Delete</button>
</a>
                                            </td>
                                        </tr>
<?php 
$cnt++;
} ?>

                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     <!--  End  Bordered Table  -->
                </div>
            </div>





        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
  <?php include('includes/footer.php');?>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
<?php } ?>
