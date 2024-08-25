import { createWeb3Modal, defaultWagmiConfig } from '@web3modal/wagmi'

import { avalancheFuji, arbitrumSepolia, polygonZkEvmCardona } from 'viem/chains';

import { reconnect } from '@wagmi/core'
import { getAccount } from '@wagmi/core'
import { get } from 'svelte/store';

import { writable, derived } from "svelte/store";

// const projectId = import.meta.env.VITE_WEB3MODAL_PROJECT_ID;
const projectId = "619498c450ee42530036acb486570472";

// export const provider = writable();

export const modal = writable();
export const config = writable();
export const loadReady = writable(false);

export const account = writable('');

export function initWeb3() {

  // 2. Create wagmiConfig
  const metadata = {
    name: 'IdleBananaMiner',
    description: 'IdleBananaMiner',
    url: 'https://IdleBananaMiner.com/', // origin must match your domain & subdomain
    icons: ['https://avatars.githubusercontent.com/u/37784886']
  }

  const _config = defaultWagmiConfig({
    chains: [avalancheFuji, arbitrumSepolia, polygonZkEvmCardona], // required
    projectId, // required
    metadata, // required
    ssr:false,
    // transports: ['http', 'ws'], // Optional - defaults to ['http', 'ws']
    // ...wagmiOptions // Optional - Override createConfig parameters
  })

  // 3. Create modal
  const _modal = createWeb3Modal({
    wagmiConfig: _config,
    projectId,
    enableAnalytics: true // Optional - defaults to your Cloud configuration
  });

  _modal.subscribeState(stateData => {
    // lets set the ready after we have the selected network
    loadReady.set(true);

    const dataAccount  = getAccount(_config);
    if (dataAccount && dataAccount.address) {
      account.set(dataAccount.address);
    }
  });

  reconnect(_config);

  modal.set(_modal);
  config.set(_config);

}

export const chainId = derived(modal, $modal => {
  if(!$modal) return 0;
  try {
    return $modal.getState().selectedNetworkId;
  } catch (e) {
    return 0;
  }
});


export function getBananaAddr() {
  if(get(config).state.chainId == avalancheFuji.id) // Avalanche Fuji
    return '0x4C21515b92F488A02AC44d8FE2878e00E270A42a';
  else if(get(config).state.chainId == arbitrumSepolia.id) // Arbitrum Sepolia
    return '0x617f1025F1e41Df21d02b35a2DbbA1a0725420ED';
  else if(get(config).state.chainId == polygonZkEvmCardona.id) // Polygon ZkEvm Cardona
    return '0x0702224dc991BD1adBecAA291188f200319E28bA';
} 