<?=$header?><?=$column_left?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-cod" data-toggle="tooltip" title="<?=$button_save?>" class="btn btn-primary">
                  <i class="fa fa-save"></i>
                </button>
                <a href="<?=$cancel?>" data-toggle="tooltip" title="<?=$button_cancel?>" class="btn btn-default">
                  <i class="fa fa-reply"></i>
                </a>
            </div>
            <h1><?=$heading_title?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?=$breadcrumb['href']?>"><?=$breadcrumb['text']?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger">
            <i class="fa fa-exclamation-circle"></i><?=$error_warning?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i><?=$text_edit?></h3>
            </div>
            <div class="panel-body">
                <form action="<?=$action?>" method="post" enctype="multipart/form-data" id="form-paybox" class="form-horizontal">

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_payment_name">
                            <span data-toggle="tooltip" title="<?=$tooltip_payment_name?>"><?=$entry_payment_name?></span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="paybox_payment_name" value="<?=$paybox_payment_name?>" placeholder="<?=$paybox_payment_name?>" id="paybox_payment_name" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_merchant_id">
                            <span data-toggle="tooltip" title="<?=$tooltip_merchant_id?>"><?=$entry_merchant_id;?></span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="paybox_merchant_id" value="<?=$paybox_merchant_id?>" placeholder="<?=$paybox_merchant_id?>" id="paybox_merchant_id" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_secret_word">
                            <span data-toggle="tooltip" title="<?=$tooltip_secret_word?>"><?=$entry_secret_word?></span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="paybox_secret_word" value="<?=$paybox_secret_word?>" placeholder="<?=$paybox_secret_word;?>" id="paybox_secret_word" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="copy_result_url">
                            <span data-toggle="tooltip" title="<?=$tooltip_result_url?>"><?=$entry_result_url;?></span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="copy_result_url" value="<?=$copy_result_url?>" placeholder="<?=$copy_result_url?>" id="copy_result_url" class="form-control" disabled/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="copy_success_url">
                            <span data-toggle="tooltip" title="<?=$tooltip_success_url?>"><?=$entry_success_url ?></span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="copy_success_url" value="<?=$copy_success_url?>" placeholder="<?=$copy_success_url?>" id="copy_success_url" class="form-control" disabled/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="copy_fail_url">
                            <span data-toggle="tooltip" title="<?=$tooltip_fail_url?>"><?= $entry_fail_url?></span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="copy_fail_url" value="<?=$copy_fail_url?>" placeholder="<?=$copy_fail_url?>" id="copy_fail_url" class="form-control" disabled/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_test">
                            <span data-toggle="tooltip" title="<?=$tooltip_test?>"><?=$entry_test?></span>
                        </label>
                        <div class="col-sm-1">
                            <select name="paybox_test" class="form-control" id="paybox_test">
                                <option value="1" <?=($paybox_test == 1) ? 'selected' : ''?>><?=$text_enabled;?></option>
                                <option value="0" <?=($paybox_test == 0) ? 'selected' : ''?>><?=$text_disabled;?></option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_lifetime">
                            <span data-toggle="tooltip" title="<?=$tooltip_lifetime?>"><?=$entry_lifetime?></span>
                        </label>
                        <div class="col-sm-1">
                            <input type="number" min="1" step="1" name="paybox_lifetime" value="<?=$paybox_lifetime?>" placeholder="<?=$paybox_lifetime?>" id="paybox_lifetime" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_order_status_id">
                            <span data-toggle="tooltip" title="<?=$tooltip_order_status?>"><?=$entry_order_status?></span>
                        </label>
                        <div class="col-sm-2">
                            <select name="paybox_order_status_id" class="form-control" id="paybox_order_status_id">
                            <?php foreach ($order_statuses as $order_status) { ?>
                                <option value="<?=$order_status['order_status_id'];?>" <?=($order_status['order_status_id'] == $paybox_order_status_id) ? 'selected' : ''?>><?=$order_status['name'];?></option>
                            <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_status">
                            <span data-toggle="tooltip" title="<?=$tooltip_status?>"><?=$entry_status?></span>
                        </label>
                        <div class="col-sm-2">
                            <select name="paybox_status" id="paybox_status" class="form-control">
                                <option value="1" <?=($paybox_status == 1) ? 'selected' : ''?>><?=$text_enabled; ?></option>
                                <option value="0" <?=($paybox_status == 0) ? 'selected' : ''?>><?=$text_disabled; ?></option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="paybox_sort_order">
                            <span data-toggle="tooltip" title="<?=$tooltip_sort_order?>"><?=$entry_sort_order?></span>
                        </label>
                        <div class="col-sm-2">
                            <input type="number" name="paybox_sort_order" id="paybox_sort_order" value="<?php echo $paybox_sort_order; ?>" size="1" class="form-control"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?=$footer?>