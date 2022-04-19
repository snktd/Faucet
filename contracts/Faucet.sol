// SPDX-License-Identifier: CC-BY-SA-4.0

// Version of Solidity compiler this program was written for
pragma solidity 0.6.4;

contract Faucet {

    function withdraw(uint withdraw_amount) public {
        // This is 0.1 ETH
        require(withdraw_amount <= 100000000000000000);

        // Amount is transfered to the account that called this function!
        msg.sender.transfer(withdraw_amount);
    }

    receive() external payable {}

}