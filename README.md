# Finances
This is where SSHC keep an open record of its finances. The treasurer will make every effort to keep this up to date on a monthly basis, and any member of the public may verify these numbers are acccurate.

## Overview

First, install [Ledger CLI](http://www.ledger-cli.org/). Then clone this repo.

### Manually working with these data

To run ledger-cli and see what's in our bank account right now, do the following:

    $ ledger -f fyYYYY.dat b

e.g.

    $ ledger -f fy2017.dat b
           $9,384.07  Assets:Checking
         $-13,536.15  Equity
          $36,280.13  Expenses
          $20,145.71    Administrative
              $15.00      911Service
             $279.32      AmazonWebServices
              $16.65      ExtinguisherInspection
              $25.00      Government
           $3,365.00      Insurance
             $130.49      LastPass
          $15,314.90      Rent
             $999.35      Supplies
              $71.89    Programming:BirthdayParty
           $2,962.88    Projects
           $2,707.85      BackRoomImprovement
             $255.03      DustCollection
          $12,984.65    Purchases
             $162.74      2DPrinter
             $692.59      CraftsmanToolcart
           $5,095.00      LaserCutter
             $295.45      MobileToolBases
           $1,516.55      SurveillanceSystem
           $5,222.32      TableSaw
             $115.00    Reimbursement:PhilStrong
         $-32,128.05  Revenue
            $-958.46    Donations
            $-169.42      AmazonSmile
            $-706.13      HighAltitudeBalloonTeam
             $-82.91      PayPalGivingFund
         $-31,169.59    MemberDues
--------------------
                   0

Due to a pecularity of double entry bookkeeping, income is negative and looks red. Deal with it. Double entry bookkeeping means that each transaction must have a source and a sink that reflects where the money is coming
from, and where it is going to. 

#License

Any code I've written or will write as part of this project is licensed under the MIT license. See the LICENSE file for more info. Any data we publish is released under the Creative Commons "No Rights Reserved" license. 
