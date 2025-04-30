(async() =>{
    const address ="0xd2a5bC10698FD955D1Fe6cb468a17809A08fd005"
    const abiArray = [[
	{
		"inputs": [],
		"name": "myuint",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "newUint",
				"type": "uint256"
			}
		],
		"name": "setMyunit",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]];
    const contractIntstance = new web3.eth.Contract(abiArray, address);
    
    console.log(await constractInstance.myUnit().call());

})()