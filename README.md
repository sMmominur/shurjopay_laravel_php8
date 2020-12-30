To integrate the <b>shurjoPay payment gateway</b> in your <b>Laravel project</b> do the following tasks sequentially.
# Installation and Configuration
1) Go to your project directory and use composer to install this package. Run the following command.
	> composer require smasif/shurjopay-laravel-package
2) After successful installation of <b>shurjopay-laravel-package</b>, go to your project and open **config** folder and then click on **app.php** file.
Append the following line in providers array. <br>
    >smasif\ShurjopayLaravelPackage\ShurjopayServiceProvider::class,
	
3) Now in order to publish ShurjopayServiceProvider class and run the following command<br>
     >php artisan vendor:publish –provider = "smasif\ShurjopayLaravelPackage\ShurjopayServiceProvider"
 
   It will automatically create a **'shurjopay.php'** file in your project **config** folder

4) After successfully doing the above steps do the following
Modify **shurjopay.php** file or add the following Keys in **.env** file with the credentials provided from **shurjoMukhi Limited**
  >SHURJOPAY_SERVER_URL = <br>
  >MERCHANT_USERNAME = <br>
  >MERCHANT_PASSWORD = <br>
  >MERCHANT_KEY_PREFIX = <br>




# Implementation

5) Add the following line in the Class or Controller where the functionality will be implemented 
  >use smasif\ShurjopayLaravelPackage\ShurjopayService;

6) Now add this line of code in your method where you want to call shurjoPay Payment Gateway. You can use any code segment of below <br>
    >$shurjopay_service = new ShurjopayService();<br>
    >$tx_id = $shurjopay_service->generateTxId();<br>
    >$shurjopay_service->sendPayment(2); <br>
    
                            **OR**
                            
    >$shurjopay_service = new ShurjopayService();<br>
    >$shurjopay_service->generateTxId('123456');<br>
    >$success_route = route('Your route'); <br>
    >$shurjopay_service->sendPayment(2, $success_route); <br>

<br>


**Note:**
In the <i>sendPayment</i> method you can add as much parameter as you want but if you want to add more parameters in <i>sendPayment</i> method you need to add this parameters in <i>sendPayment</i> method of **ShurjopayService.php** file which is located in <br>
        vendor/smasif/ shurjopay-laravel-package/src 
<br>
<br>
7) Go to this (vendor/smasif/ shurjopay-laravel-package/src) path and open the **ShurjopayController.php** file .There has a method called **response**.

<br><br>
In order to save the payment response in database do the following<br>
a)	Add the following line of code in the **ShurjopayController.php**. <br>
>use DB;<br>

b) Write the necessary query you want to add response in your database. It may be update database or insert into database.<br>
        **if ($res['status']){<br>
        echo "Success";<br>
        die();<br>
        }** <br>

c) Write the necessary query you want to add after failing transaction. It may be update database or insert into database.<br>
        **if ($res['status']){<br>
            echo "Fail";<br>
            die();<br>
        }**


**Now Test your application and oversees the response and interaction**


