const command = 'osascript pecan/scripts/media';
const refreshFrequency = 10000; // ms

const render = ({ output }) => {
    if (`${output}`.length != 0 && `${output}` != 'undefined') {
	let out = output.split("\n");
	return (
	    <div class='screen'><div class="holder">
	    <div class="pecan-media-holder">
	    <div class='pecanmedia'>
	    {out[0]} - {out[1]}
	    </div>
	    <div class="pecan-media-progress" style={{width: out[2] + "%"}}></div>
	    </div>
	    </div></div>
	);
    } 
}


export { command, refreshFrequency, render };
