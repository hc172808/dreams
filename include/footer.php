
      <footer id="myFooter">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 social-footer">
                    <div class="footer-social">
                  <ul>
                    <li>
                      <a href="https://www.facebook.com/definiteautomation" target="_blank">
                        <i class="fab fa-facebook" aria-hidden="true"></i>
                      </a>
                    </li>
                    <li>
                      <a href="https://www.youtube.com/channel/definiteautomation" target="_blank">
                       <i class="fab fa-youtube" aria-hidden="true"></i>
                      </a>
                    </li>
                    <li>
                      <a href="https://www.instagram.com/definiteautomation" target="_blank">
                        <i class="fab fa-instagram" aria-hidden="true"></i>
                      </a>
                    </li>
                    <!-- <li>
                      <a href="https://t.me/joinchat/" target="_blank">
                        <i class="fab fa-telegram" aria-hidden="true"></i>
                      </a>
                    </li> -->
                  </ul>
                  </div>

                </div>
                <div class="col-sm-3">
                    <h5>About</h5>
                    <ul>
                        <li><a href="about-us.php">About Us</a></li>
                        <li><a href="contact.php">Contact Us</a></li>
                        <li><a href="terms-and-conditions.php">Terms & Conditions</a></li>
                    </ul>
                </div>
                <div class="col-sm-3">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="privacy-policy.php">Privacy Policy</a></li>
                        <li><a href="legal-policy.php">Legal Policy</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 info">
                    <h5>Information</h5>
                    <p><?php echo $appDetRes['app_name']; ?> - An ultimate Ludo battle platform. Participate in the online tournaments & win cash prizes, rewards.</p>
                </div>
            </div>
        </div>
        <div class="container">
          <center>
          <p>Copyright ©2020 All Rights Reserved | <a href="https://www.definiteautomation.com/">DefiniteAutomation</a><br />
            All the Logos, Trademarks and Images belongs to their Respective Owners.</p>
          </center>
        </div>
      </footer><!-- Jquery -->
      <div id="mybutton">
        <a href="download.php" class="feedback" title="Download"><img src="asset/download.gif" width="300"></a>
      </div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<!-- Jquery -->

<!-- Boostrap JS Start -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
  crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
  crossorigin="anonymous"></script>
<!-- Boostrap JS End -->

<script src="asset/owl.carousel.min.js"></script>
<script type="text/javascript">

  $(document).ready(function(){
  $(".owl-carousel").owlCarousel({
    items: 4,
    margin: 10,
    autoplay:true,
    autoplayTimeout:2000,
    autoplayHoverPause:true,
    loop:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:4
        }
    }
  });
});

</script>

<script>
// When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 150 || document.documentElement.scrollTop > 150) {
    document.getElementById("sabnav").style.backgroundColor = "#0a1b22";
    document.getElementById("stick-logo").style.display = "block";
  } else {
    document.getElementById("sabnav").style.backgroundColor = "#0000";
    document.getElementById("stick-logo").style.display = "none";
  }
}
</script>
</body>
</html>