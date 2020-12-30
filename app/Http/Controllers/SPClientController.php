<?php

namespace App\Http\Controllers;
use App\Models\SPClient;
use Illuminate\Http\Request;
use DB;
use smasif\ShurjopayLaravelPackage\ShurjopayService;

class SPClientController extends Controller{


	public function send(Request $request){
		$amount_as_str = $request->payamount;
		$remove_leading_zero = ltrim($amount_as_str, "0");
		$amount =(int)$remove_leading_zero;
		if($amount>=1){
		 $shurjopay_service = new ShurjopayService();
         $tx_id = $shurjopay_service->generateTxId();
         $shurjopay_service->sendPayment($amount);
		}
		else{
			echo "<div> <h1 style='color:#f0ad4e;padding:50px;text-align:center'>Amount Can't be less than 1</h1></div>";
		}
	}
	
    
}
