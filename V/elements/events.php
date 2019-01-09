<link rel="stylesheet" type="text/css" href="./Content/css/events.css" media="all"/>

<div class="col-lg-2 col-md-2 col-xs-2"></div>
    <div class="col-lg-8 col-md-8 col-xs-8 ">
            <div class="col-lg-12 col-md-12 col-xs-12 page">
                <center><h1 class="association_title" style="color:#666;">Les événements</h1></center>
                <h3 style="padding:30px;">La B2-20 est à l'orgine de nombreux événements ayant pour but de faire vivre l'association, de se rencontrer ou d'intervenir auprès d'étudiants.<br/> 
                	Vous pouvez trouver une liste des précédents événements ici !<br /></h3>
                <?php 
                $nbEvent = 11;
                $chemin = './V/events/';

                for ($i=$nbEvent; $i>0; $i--){
                	$chaine = $chemin . "event" . $i . ".tpl";
                	include($chaine);
                    //echo "<h3>".$i."</h3><hr/>";
                    echo "<span style='margin:5px'></span>";
                }
                ?>

            </div>
        </div>
    </div>
<div class="col-lg-2 col-md-2 col-xs-2"></div>

</div>
</div>
