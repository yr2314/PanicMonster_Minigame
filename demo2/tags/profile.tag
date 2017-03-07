<profile>

  <h2>Username here</h2>
  <img src="http://www.placehold.it/150x150" alt="User profile picture">
  <br>
  <br>

  <button class="btn btn-primary" onclick={ createLantern } type="button" name="button">create lantern</button>

  <br>

<createlantern if={ showCreator }></createlantern>

<h3>My Lanterns:</h3>
<lantern each= { lanternList }></lantern>

  <script>

  this.showCreator = false;

  this.lanternList = [];

this.createLantern = function() {
  this.showCreator = true;
}


  </script>



  <style>
    :scope {
      display: block;
      width: 80%;
      height:800px;
      padding: 15px;
      font-size: 30px;
    }
  </style>
</profile>
