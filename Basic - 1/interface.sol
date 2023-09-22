// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface Icounter {
        function count() external view returns(uint);

        function increment() external ;
    }

contract Counter {
    uint public count;




    function increment() external {
        count += 1;
    }

    


}
contract Mycontract {
    function incremetCounter(address _counter) external {
        Icounter(_counter).increment();
    }

    function getCount(address _counter) external view returns(uint){
        return Icounter(_counter).count();
    }
}


        interface UniswapV2Factory {
            function getPair(address tokenA, address tokenB)
            external 
            view 
            returns (address pair);
        }


interface UniSwapV2Pair {

        function getReserves()
        external 
        view 
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestamplast
        );

    
}

contract UniswapExample{
    address private factory ;
    address private dai;
    address private weth;

    function getTokenReserves() external  view returns(uint, uint){

    }

}
