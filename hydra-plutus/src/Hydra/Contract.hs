-- | Things related to the Hydra smart contracts / script validators.
module Hydra.Contract where

import Hydra.Prelude

import Data.ByteString qualified as BS
import Hydra.Cardano.Api (
  ScriptHash,
  hashScript,
  serialiseToRawBytes,
  pattern PlutusScript,
 )
import Hydra.Contract.Head qualified as Head
import Hydra.Contract.HeadTokens qualified as HeadTokens
import Hydra.Plutus (commitValidatorScript, depositValidatorScript, initialValidatorScript)
import PlutusLedgerApi.V3 (TxId (..), TxOutRef (..), toBuiltin)

-- | Information about relevant Hydra scripts.
data ScriptInfo = ScriptInfo
  { mintingScriptHash :: ScriptHash
  -- ^ Hash of the μHead minting script given some default parameters.
  , mintingScriptSize :: Int
  -- ^ Size of the μHead minting script given some default parameters.
  , initialScriptHash :: ScriptHash
  , initialScriptSize :: Int
  , commitScriptHash :: ScriptHash
  , commitScriptSize :: Int
  , headScriptHash :: ScriptHash
  , headScriptSize :: Int
  , depositScriptHash :: ScriptHash
  , depositScriptSize :: Int
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (ToJSON)

-- | Gather 'ScriptInfo' from the current Hydra scripts. This is useful to
-- determine changes in between version of 'hydra-plutus'.
scriptInfo :: ScriptInfo
scriptInfo =
  ScriptInfo
    { mintingScriptHash = scriptHash $ HeadTokens.mintingPolicyScript defaultOutRef
    , mintingScriptSize = scriptSize $ HeadTokens.mintingPolicyScript defaultOutRef
    , initialScriptHash = scriptHash initialValidatorScript
    , initialScriptSize = scriptSize initialValidatorScript
    , commitScriptHash = scriptHash commitValidatorScript
    , commitScriptSize = scriptSize commitValidatorScript
    , headScriptHash = scriptHash Head.validatorScript
    , headScriptSize = scriptSize Head.validatorScript
    , depositScriptHash = scriptHash depositValidatorScript
    , depositScriptSize = scriptSize depositValidatorScript
    }
 where
  scriptHash = hashScript . PlutusScript

  scriptSize = BS.length . serialiseToRawBytes

  defaultOutRef =
    TxOutRef
      { txOutRefId = TxId (toBuiltin . BS.pack $ replicate 32 0)
      , txOutRefIdx = 0
      }
