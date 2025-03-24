#!/bin/bash
 
# run docker
# make clean
# make build
# ~/reps/lnd-setup/setup.sh

#rm -rf ~/lndconfig
#mkdir ~/lndconfig
#cp ~/reps/lnd-setup/lnd/lnd.conf ~/lndconfig


rm -rf ~/lnd/alice
mkdir ~/lnd/alice
cp ~/lnd/lnd.conf ~/lnd/alice/
cp -R ~/reps/lnd-setup/.lnd/alice/ ~/lnd/alice/
mv ~/lnd/alice/data/chain/bitcoin/regtest ~/lnd/alice/data/chain/bitcoin/mainnet


rm -rf ~/lnd/bob
mkdir ~/lnd/const FADE_EFFECT_TIME = 300


const useProfileSettingsVisible = ({ open }) => {
  const [visible, setVisible] = useState(open)

  useEffect(() => {
    if (open) {
      setVisible(true)
      return () => {}
    }
    
    const id = setTimeout(() => setVisible(false), FADE_EFFECT_TIME)
    return () => { clearTimeout(id) }
  }, [open])

  return visible
}
bob
cp ~/lnd/lnd.conf ~/lnd/bob/
cp -R ~/reps/lnd-setup/.lnd/bob/ ~/lnd/bob/
mv ~/lnd/bob/data/chain/bitcoin/regtest ~/lnd/bob/data/chain/bitcoin/mainnet
