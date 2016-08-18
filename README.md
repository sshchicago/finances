# Finances
This is where SSHC keep an open record of its finances. The treasurer will make every effort to keep this up to date on a weekly basis, and any member of the public may verify these numbers are acccurate.

## Cash on hand at-a-glance

[Click here](https://github.com/sshchicago/finances/blob/master/cash.txt) to see our Month-To-Date balance!

## Overview

First, install [Ledger CLI](http://www.ledger-cli.org/). Then clone this repo.

### Manually working with these data

To run ledger-cli and see what's in our bank account right now, do the following:

    $ ledger -f YYYY-MM.dat b

e.g.

    $ ledger -f 2015-02.dat b
               $1,790.10  Assets:Checking
              $-1,579.43  Equity
               $1,345.71  Expenses
                   $1.70    AWS
                 $144.01    Comcast
               $1,200.00    Rent
              $-1,556.38  Income
                $-882.17    Paypal
                $-155.81    Stripe
                $-518.40    Zoho
    --------------------

Due to a pecularity of double entry bookkeeping, income is negative and looks red. Deal with it.

## How to use these numbers

We're using [Ledger CLI](http://www.ledger-cli.org/) to do the math, which means that the .dat files are expressed using double entry bookkeeping. 
Double entry bookkeeping means that each transaction must have a source and a sink that reflects where the money is coming
from, and where it is going to. An example:

    2015/02/04 AWS
      Expenses:AWS            $1.70
      Assets:Checking         $-1.70

In this transaction, we are taking $1.70 out of our checking account (the source), and transferring it to Amazon Web Services (the sink).
Because of a LedgerCLI niceity, that can be simplified:

    2015/02/04 AWS
      Expenses:AWS            $1.70
      Assets:Checking
    
Here, you can see that I'm using Assets:Checking as the default -- any unreconsiled amount in that transaction will be taken from / added to Assets:Checking.

Here's a better example of a default:

    2015/03/02 Membership
     Income:Paypal           $-80.67
     Income:Paypal           $-48.25
     Income:Paypal           $-38.54
     Income:Check            $-50.00
     Assets:Checking

We're reconciling several transactions that all occurred on the same day. A total of $217.46 was taken out of those four
sources, and so $217.46 was added into our Assets:Checking account.

At the beginning of each month, you'll see:

    2015/03/01 Opening Balance
     Assets:Checking         $1,790.10
     Equity

This is me moving our previous month's balance into our checking account. It's basically a double entry bookkeeping hack
that makes our Assets:Checking reflect the correct amount. 

#License TL;DR

Any code I've written or will write as part of this project is licensed under the MIT license. See the LICENSE file for more info. Any data we publish is released under the Creative Commons "No Rights Reserved" license. 
