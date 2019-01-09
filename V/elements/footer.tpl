<link rel="stylesheet" href="Content/css/footer.css"/>

    <canvas id="c" style="display:block" ></canvas>
    <script src="./Content/js/canvas.js"></script>
    <script src="./Content/js/topButton.js"></script>

    <center>
        <div class="footer">
            
            <div style="display:flex" class = "b220-footer">
                <span style="z-index:1;margin-left:auto;margin-right:auto">Rejoignez B220</span>
            </div>
            <div style="display:flex" class = "b220-footer">
                <button id="topButton" onclick = "backToTop()">
                    <i class="fas fa-angle-up"></i>
                </button>
            </div>
            <div class="deco-footer"></div>
            <span class="mail-footer"> b220association@gmail.com </span>
            <div class="col-lg-12 col-md-12 col-xs-12 row-footer">
                <div class="col-lg-2 col-md-2 col-xs-2 row-footer"></div>
                <div class="col-lg-8 col-md-8 col-xs-8 row-footer"><!-- some code --></div>
                <div class="col-lg-2 col-md-2 col-xs-2 row-footer">
                    
                </div>
            </div>
        </div>
    <center>

    <script>
        movingArrow();
        
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
          anchor.addEventListener('click', function (e) {
              e.preventDefault();
    
              document.querySelector(this.getAttribute('href')).scrollIntoView({
                  behavior: 'smooth',
                  block: 'start'
              });
          });
      });
    </script>