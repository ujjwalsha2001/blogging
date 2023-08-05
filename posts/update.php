<?php require "../includes/header.php"?>
<?php require "../config/config.php"?>

<?php

  if(isset($_GET['upd_id'])){

    $id= $_GET['upd_id'];

    $select = $conn->query("SELECT * FROM posts where id ='$id'");
    $select->execute();
    $rows = $select->fetch(PDO::FETCH_OBJ);


    if($_SESSION['user_id']!== $rows->user_id){
      header("location: http://localhost/clean-blog/index.php");
    }


    if(isset($_POST['submit'])){
      if($_POST['title']==''){
        echo"<div class='alert alert-danger text-center ' role='alert'>
        Enter Title
      </div>";
  
      }else if($_POST['subtitle'] == ''){
        echo"<div class='alert alert-danger text-center ' role='alert'>
        Enter Subtitle
      </div>";
  
      }else if($_POST['body'] == ''){
        echo"<div class='alert alert-danger text-center ' role='alert'>
        Enter text
      </div>";
  
      }
      else{
  
          unlink("images/" . $rows->img . "" );
  
          $title = $_POST['title'];
          $subtitle = $_POST['subtitle'];
          $body = $_POST['body'];
          $img = $_FILES['img']['name'];
          
          $dir = "images/".basename($img);
  
  
          $update = $conn->prepare("UPDATE posts  SET title = :title, subtitle = :subtitle, body = :body, img = :img WHERE id ='$id'");
  
          $update->execute([
              ':title' => $title,
              ':subtitle' => $subtitle,
              ':body' => $body,
              ':img' => $img
          ]);
          
          if(move_uploaded_file($_FILES['img']['tmp_name'], $dir));{
              header("location: http://localhost/clean-blog/index.php");
          }
  
          // header("location: http://localhost/clean-blog/index.php");
      }
    }
  }else{
    header("location: http://localhost/clean-blog/404.php");
  }

?>


            <form method="POST" action="update.php?upd_id=<?php echo $id;?> "  enctype="multipart/form-data">
              <!-- Email input -->
              <?php echo "<h6>Title</h6>"?>
              <div class="form-outline mb-4">
                <input type="text" name="title" value="<?php echo $rows->title;?>" id="form2Example1" class="form-control" placeholder="Title" />
               
              </div>
              <?php echo "<h6>Subtitle</h6>"?>
              <div class="form-outline mb-4">
                <input type="text" name="subtitle" value="<?php echo $rows->subtitle;?>" id="form2Example1" class="form-control" placeholder="Subtitle" />
            </div>
            <?php echo "<h6>Body</h6>"?>
              <div class="form-outline mb-4">
                <textarea type="text" name="body" id="form2Example1" class="form-control" placeholder="Body" rows="8"><?php echo $rows->body;?></textarea>
            </div>

              
            <?php echo "<img src='images/". $rows->img ."' width= 800px height = 400px >"?>
            
             <div class="form-outline  mt-3 mb-4">
                <input type="file" name="img" id="form2Example1" class="form-control" placeholder="image" />
            </div>


              <!-- Submit button -->
              <button type="submit" name="submit" class="btn btn-primary  mb-4 text-center">Update</button>

          
            </form>


           
        </div>
        <?php require "../includes/footer.php"?>