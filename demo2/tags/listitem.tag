<listitem>

  <div class="checkbox">
    <label class={ completed: done }>
    <input type="checkbox" checked={ done } onclick={ toggle }> { task }</label>
  </div>


  <script>

    var that = this;

    toggle(event) {
      event.item.done = !event.item.done;
      this.parent.update();
    }


  </script>



  <style>
    :scope {
      display: block;
      width: 80%;
      padding: 15px;
      font-size: 30px;
      border: solid 2px orange;
    }

    .completed {
      text-decoration: line-through;
      color: silver;
    }
  </style>
</listitem>
