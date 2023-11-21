// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

final _contractAbi = ContractAbi.fromJson(
  '[{"inputs":[{"internalType":"uint256","name":"_endTime","type":"uint256"}],"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"uint256","name":"candidateIndex","type":"uint256"}],"name":"AddCandidate","type":"event"},{"inputs":[{"internalType":"string","name":"_name","type":"string"}],"name":"registerCandidate","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"_endTime","type":"uint256"}],"name":"reset","outputs":[],"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[],"name":"Reset","type":"event"},{"inputs":[{"internalType":"uint256","name":"candidateIndex","type":"uint256"}],"name":"vote","outputs":[],"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"voter","type":"address"},{"indexed":true,"internalType":"uint256","name":"candidateIndex","type":"uint256"}],"name":"Vote","type":"event"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"candidates","outputs":[{"internalType":"string","name":"name","type":"string"},{"internalType":"address","name":"candidateAddress","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"endTime","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getResults","outputs":[{"components":[{"internalType":"string","name":"name","type":"string"},{"internalType":"uint256","name":"voteCount","type":"uint256"},{"internalType":"address","name":"candidateAddress","type":"address"}],"internalType":"struct Results[]","name":"","type":"tuple[]"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"isEnded","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"owner","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"startTime","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"totalVotes","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"voters","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"voterStatus","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"votesReceived","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"}]',
  'Ballot',
);

Future registerCandidate(String? name) async {
  final apiUrl = "https://rpc1.aries.axiomesh.io";
  final httpClient = Client();
  final ethClient = Web3Client(apiUrl, httpClient);
  final contractAddress = "0x2467F498d9b139a7761f61442790B3d4451431e4";

  final privateKey = FFAppState().privateKey;
  final credentials = EthPrivateKey.fromHex(privateKey);

  final contract =
      DeployedContract(_contractAbi, EthereumAddress.fromHex(contractAddress));
  final registerCandidateFunction = contract.function('registerCandidate');
  final params = [
    name,
  ];
  await ethClient.sendTransaction(
    credentials,
    Transaction.callContract(
      contract: contract,
      function: registerCandidateFunction,
      parameters: params,
    ),
    chainId: 23411,
  );
}
