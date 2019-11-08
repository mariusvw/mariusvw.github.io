cat <<EOF
<h1>Visual Subnet Calculator</h1>

<p>Enter the network you wish to subnet:</p>

<form name="calc" onsubmit="updateNetwork(); return false;">

<table>
  <tr>
    <td class="label">Network Address</td>
    <td class="label">Mask bits</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><input type="text" name="network" size="15" maxlength="15" value="172.16.0.0"></td>
    <td>/<input type="text" name="netbits" size="2" maxlength="2" value="12"></td>
    <td><input type="submit" value="Update">
    <input type="button" value="Reset" onclick="if (confirm('This will reset all subnet divisions you have made. Proceed?')) startOver();"></td>
  </tr>
</table>
<!--
<p>
  <input type="checkbox" id="cb_subnet" checked onclick="toggleColumn(this)"><label for="cb_subnet">Subnet address</label>
  <input type="checkbox" id="cb_netmask" onclick="toggleColumn(this)"><label for="cb_netmask">Netmask</label>
  <input type="checkbox" id="cb_range" checked onclick="toggleColumn(this)"><label for="cb_range">Range of addresses</label>
  <input type="checkbox" id="cb_useable" checked onclick="toggleColumn(this)"><label for="cb_useable">Useable IPs</label>
  <input type="checkbox" id="cb_hosts" checked onclick="toggleColumn(this)"><label for="cb_hosts">Hosts</label>
  <input type="checkbox" id="cb_divide" checked onclick="toggleColumn(this)"><label for="cb_divide">Divide</label>
  <input type="checkbox" id="cb_join" checked onclick="toggleColumn(this)"><label for="cb_join">Join</label>
</p>
-->
</form>

<hr />

<table class="calc">
  <colgroup>
    <col id="col_subnet">
    <col id="col_netmask" style="display: none">
    <col id="col_range">
    <col id="col_useable">
    <col id="col_hosts">
    <col id="col_divide">
    <col id="col_join">
  </colgroup>
  <thead>
    <tr>
        <td>Subnet address</td>
        <td>Netmask</td>
        <td>Range of addresses</td>
        <td>Useable IPs</td>
        <td>Hosts</td>
        <td>Divide</td>
        <td id="joinHeader">Join</td>
    </tr>
    </thead>
    <tbody id="calcbody">
      <tr>
        <td>172.16.0.0/12</td>
        <td>255.240.0.0</td>
        <td>172.16.0.0 - 172.31.255.255</td>
        <td>172.16.0.1 - 172.31.255.254</td>
        <td>1048574</td>
        <td><a href="#">Divide</a></td>
        <td rowspan="1" colspan="1" class="maskSpan"><img src="img/subnet/12.gif"></td>
      </tr>
    </tbody>
</table>

EOF
