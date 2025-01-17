/**
 * @author syt123450 / https://github.com/syt123450
 */

import { StableMerge3d } from "../abstract/StableMerge3d";

function Multiply3d( mergedElements ) {

	StableMerge3d.call( this, mergedElements );

	this.strategyType = "Multiply3d";

}

Multiply3d.prototype = Object.assign( Object.create( StableMerge3d.prototype ) );

export { Multiply3d };