<link rel="stylesheet" href="style.css">

<h2>
    Was gibt es diese Woche zu Essen?
</h2>

<button class="reload_list" onClick="window.location.reload();">
    Neue Gerichte finden
</button>
<br>

<div class="box">
    <h4>Montag</h4>
    <text class="box_text">
        <?php include('generator.php') ?>
    </text>
</div>

<div class="box">
    <h4>Dienstag</h4>
    <text class="box_text">
        <?php include('generator.php') ?>
    </text>
</div>


<div class="box">
    <h4>Mittwoch</h4>
    <text class="box_text">
        <?php include('generator.php') ?>
    </text>
</div>

<div class="box">
    <h4>Donnerstag</h4>
    <text class="box_text">
        <?php include('generator.php') ?>
    </text>
</div>

<div class="box">
    <h4>Freitag</h4>
    <text class="box_text">
        <?php include('generator.php') ?>
    </text>
</div>

<div class="box">
    <h4>Samstag</h4>
    <text class="box_text">
        <?php include('generator.php') ?>
    </text>
</div>

<div class="box">
    <h4>Sonntag</h4>
    <text class="box_text">
        <?php include('generator.php') ?>
    </text>
</div>