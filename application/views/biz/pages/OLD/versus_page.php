<section class="versus-section">
    <div class="text-center py-3 mt-3">
        <h1><?=$pageContent->page_name; ?></h1>
    </div>
    <div class="container">
        <div class="row ">
            <div class="col-lg-4 text-center">
                <img class="logo-img mb-5" src="<?=base_url()?>assets/biz/img/logos/Pnapna-Central-logo.png" alt="PnaPna-Automated customer communication, online booking for increased sales, job management">
            </div>
            <div class="col-lg-8 crm">
                <p class="project">Automated customer communication, online booking for increased sales, job management, and calendar functions tailor-made so that you can offer your customers the best experience.Your customers expect Amazon-like communication. Customize and automate key contact points for before, during, and after the job is done. Use our beautiful forms to wow your customers.</p>
            </div>
            <div class="col-lg-4  text-center">
                <img class="logo-img mb-5" src="https://admin.pnapna.com/<?=$pageContent->competitor_image?>" alt="PnaPna-Customize and automate key contact points for before, during, and after the job is done">
            </div>
            <div class="col-lg-8 crm">
                <p class="project"><?=$pageContent->competitor_content?></p>
            </div>
        </div>
    </div>
    <div class="table-responsive mb-5">
        <table class="table container">
            <thead>
                <tr>
                    <th style="min-width: 1000px"></th>
                    <th style="min-width: 100px!important" class="table-head text-center">PnaPna Cleaning</th>
                    <th style="min-width: 100px!important" class="table-head text-center"><?=str_replace('PnaPna Vs ', '', $pageContent->page_name)?></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $countFeatures = count(json_decode($pageContent->feature));
                    $featureJson   = json_decode($pageContent->feature);
                    $pnpFeatJson   = json_decode($pageContent->pnapna_features);
                    $compFeatJson  = json_decode($pageContent->competitor_features);
                    for ($i=0; $i < $countFeatures; $i++) { ?>
                        <tr>
                            <td scope="row"><?=$featureJson[$i]?></td>
                            <?php if ($pnpFeatJson[$i]==1) {
                                echo '<td class="text-center text-success"><i class="fa fa-check" aria-hidden="true"></i></td>';
                            }else{
                                echo '<td class="text-center text-danger"><i class="fa fa-times" aria-hidden="true"></i></td>';
                            } ?>
                            <?php if ($compFeatJson[$i]==1) {
                                echo '<td class="text-center text-success"><i class="fa fa-check" aria-hidden="true"></i></td>';
                            }else{
                                echo '<td class="text-center text-danger"><i class="fa fa-times" aria-hidden="true"></i></td>';
                            } ?>
                        </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</section>
<style type="text/css">
    .versus-section img{width: 200px;}
</style>