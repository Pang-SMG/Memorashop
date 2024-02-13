{extends file='page.tpl'}

{block name="content"}
<section id="main" style="padding-top: 2rem; margin-bottom: 2rem;">
    <div class="row product-container js-product-container">
        <div class="col-md-6 text-center">
            <img src="{$QR_GENERATE}" class="img-responsive" style="width: 75%; margin: auto;"/>
        </div>
        <div class="col-md-6">
            <h1 style="font-size: 2em; color: #000000;">{$PRICE} บาท</h1>
            <form method="post" enctype="multipart/form-data" style="margin-top: 2rem;">
                <div class="form-group">
                    <label for="slip_upload" class="control-label">แนบสลิปการโอน</label>
                    <input type="file" name="slip_upload" id="slip_upload" class="form-control"/>
                </div>
                <button type="submit" name="placeorder" class="btn btn-primary">
                    Upload
                </button>
            </form>
        </div>
    </div>
</section>
{/block}
