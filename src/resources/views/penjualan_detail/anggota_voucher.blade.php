<div class="modal fade" id="modal_anggota_voucher" tabindex="-1" role="dialog" aria-labelledby="modal-member">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Anggota Detail</h4>
            </div>
            <div class="modal-body">
                <input type="text" id="id_anggota" hidden>
                <input type="text" id="saldo" hidden>
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <th style="width:30%;">
                                Nomer Anggota
                            </th>
                            <td style="width:20%; text-align: right;">
                                <span id="nomor_anggota_html">Nomer Anggota</span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Nama Anggota
                            </th>
                            <td style="text-align: right;">
                                <span id="nama_anggota_html">Nama Anggota</span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Jumlah Saldo
                            </th>
                            <td style="text-align: right;">
                                Rp. <span id="saldo_anggota_html">Saldo Anggota</span> ,-
                            </td>
                        </tr>
                        <tr>
                            <th>
                                Total Belanja
                            </th>
                            <td style="text-align: right;">
                                Rp. <span id="total_belanja_html">Total Belanja</span> ,-
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="form-group">
                    <label for="nominal_bayar_voucher_modal">Nominal Bayar Voucher (Rp)</label>
                    <input maxlength="7" type="number" class="form-control form-control-lg" id="nominal_bayar_voucher_modal" placeholder="Enter nominal" name="nominal_bayar_voucher_modal" value=0 autofocus>
                </div>
            </div><!-- .modal-body -->
            <div class="modal-footer">
                <button class="btn btn-default float-right" id="modal_voucher_cancel" type="button">Cancel</button>
                <button class="btn btn-info float-right" id="modal_voucher_ok" type="button">OK <i class="fa fa-arrow-right"></i></button>
            </div>
        </div>
    </div>
</div>
