<?php require "../includes/header.php"?>
<?php require "../config/config.php"?>

<?php

    if(isset($_SESSION['username'])){
      header("location: http://localhost/clean-blog/index.php");
    }

    if(isset($_POST['submit'])){

        if($_POST['email']==''){
          echo"<div class='alert alert-danger text-center ' role='alert'>
          Enter Email
        </div>";

        }else if($_POST['password'] == ''){
          echo"<div class='alert alert-danger text-center ' role='alert'>
          Enter Password
        </div>";

        }else{
                $email = $_POST['email'];
                $password = $_POST['password'];

                $login = $conn->prepare("SELECT * FROM user WHERE email = '$email'");
                $login->execute();

                $row = $login->FETCH(PDO::FETCH_ASSOC);


                //  number of rows after executing query  $login->rowcount();

                if($login->rowcount()>0){

                    if(password_verify($password, $row['mypassword'])){
                        $_SESSION['username']= $row['username'];
                        $_SESSION['user_id']= $row['id'];

                        header("location: http://localhost/clean-blog/index.php");
                        echo "Logged in";
                    }else{
                      echo"<div class='alert alert-danger text-center ' role='alert'>
                            The Email or password is wrong
                          </div>";
                    }


                }else{
                  echo"<div class='alert alert-danger text-center ' role='alert'>
                        The Email or password is wrong
                      </div>";
                }
        }
    }



?>


               <form method="POST" action="login.php">
                  <!-- Email input -->
                  <div class="form-outline mb-4">
                    <input type="email" name="email" id="form2Example1" class="form-control" placeholder="Email" />
                   
                  </div>

                  
                  <!-- Password input -->
                  <div class="form-outline mb-4">
                    <input type="password" name="password" id="form2Example2" placeholder="Password" class="form-control" />
                    
                  </div>



                  <!-- Submit button -->
                  <button type="submit" name="submit" class="btn btn-primary  mb-4 text-center">Login</button>

                  <!-- Register buttons -->
                  <div class="text-center">
                    <p>a new member? Create an acount<a href="register.php"> Register</a></p>
                    

                   
                  </div>
                </form>

           
<?php require "../includes/footer.php"?>
