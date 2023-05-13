// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
import { IWorld } from "solecs/interfaces/IWorld.sol";
import { MapConfigComponent, ID as MapConfigComponentID, MapConfig } from "components/MapConfigComponent.sol";

library MapConfigInitializer {
  function init(IWorld world) internal {
    MapConfigComponent(world.getComponent(MapConfigComponentID)).set(MapConfig({ width: 20, height: 20 }));
  }
}