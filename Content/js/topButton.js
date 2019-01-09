var backToTop = function() {
    var top = document.getElementById("top");
    top.scrollIntoView({ 
        behavior: 'smooth' 
      });
}

    var movingArrow = function() {
        document.getElementById("topButton").animate([
            { transform: 'translateY(0px)' }, 
            { transform: 'translateY(-20px)' },
            { transform: 'translateY(0px)' }
          ], { 
            duration: 1200,
            iterations: Infinity
          });
    }