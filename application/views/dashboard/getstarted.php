<div class="az-content-body">
  <div class="row row-sm">
    <div class="col-xl-12 mg-t-20">
      <div class="card card-dashboard-twentyone">
        <div class="card-body">   
          <p class="text-center tx-18-f mb-0">Please provide the details below to set up your profile</p>
          <div class="container-fluid col-md-6 col-md-offset-3 mt-5">
            <form method="post" id="regForm" action="<?=base_url('profileGetS')?>">
              <div class="tab">
                <p><input placeholder="First name..." oninput="this.className = ''" name="f_name"></p>
                <p><input placeholder="Last name..." oninput="this.className = ''" name="l_name"></p>
              </div>
              <div class="tab">
                <p><input placeholder="Phone with country code..." oninput="this.className = ''" name="phone"></p>
              </div>
              <div style="overflow:auto;">
                <div style="float:right;">
                  <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                  <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                </div>
              </div>
              <div style="text-align:center;margin-top:40px;">
                <span class="step"></span>
                <span class="step"></span>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<style type="text/css">
  #regForm {
    min-width: 500px;
  }
  input {
    padding: 10px;
    width: 100%;
    font-size: 17px;
    border: 1px solid #aaaaaa;
  }
  input.invalid {
    background-color: #ffdddd;
  }
  .tab {
    display: none;
  }
  button {
    background-color: #4CAF50;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    font-size: 17px;
    cursor: pointer;
  }
  button:hover {
    opacity: 0.8;
  }
  #prevBtn {
    background-color: #bbbbbb;
  }
  .step {
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbbbbb;
    border: none;  
    border-radius: 50%;
    display: inline-block;
    opacity: 0.5;
  }
  .step.active {
    opacity: 1;
  }
  .step.finish {
    background-color: #4CAF50;
  }
</style>

<script type="text/javascript">
  $(document).ready(function() {
    function randomAlert() {
      var min = 5,
      max = 20;
      var rand = Math.floor(Math.random() * (max - min + 1) + min);
      $("#time").html('Next alert in ' + rand + ' seconds');
      $('#timed-alert').fadeIn(500).delay(3000).fadeOut(500);
      setTimeout(randomAlert, rand * 1000);
    };
    randomAlert();
  });

  $('.btn').click(function(event) {
    event.preventDefault();
    var target = $(this).data('target');
    $('#click-alert').html('data-target= ' + target).fadeIn(50).delay(3000).fadeOut(1000);

  });


  var currentTab = 0;
  showTab(currentTab);

  function showTab(n) {
    var x = document.getElementsByClassName("tab");
    x[n].style.display = "block";
    if (n == 0) {
      document.getElementById("prevBtn").style.display = "none";
    } else {
      document.getElementById("prevBtn").style.display = "inline";
    }
    if (n == (x.length - 1)) {
      document.getElementById("nextBtn").innerHTML = "Submit";
    } else {
      document.getElementById("nextBtn").innerHTML = "Next";
    }
    fixStepIndicator(n)
  }

  function nextPrev(n) {
    var x = document.getElementsByClassName("tab");
    if (n == 1 && !validateForm()) return false;
    x[currentTab].style.display = "none";
    currentTab = currentTab + n;
    if (currentTab >= x.length) {
      document.getElementById("regForm").submit();
      return false;
    }
    showTab(currentTab);
  }

  function validateForm() {
    var x, y, i, valid = true;
    x = document.getElementsByClassName("tab");
    y = x[currentTab].getElementsByTagName("input");
    for (i = 0; i < y.length; i++) {
      if (y[i].value == "") {
        y[i].className += " invalid";
        valid = false;
      }
    }
    if (valid) {
      document.getElementsByClassName("step")[currentTab].className += " finish";
    }
    return valid;
  }

  function fixStepIndicator(n) {
    var i, x = document.getElementsByClassName("step");
    for (i = 0; i < x.length; i++) {
      x[i].className = x[i].className.replace(" active", "");
    }
    x[n].className += " active";
  }
</script>