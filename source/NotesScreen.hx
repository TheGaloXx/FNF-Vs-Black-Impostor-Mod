package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxTimer;

class NotesScreen extends MusicBeatState
{
	override function create()
	{
		super.create();
		
		var advice:FlxSprite = new FlxSprite().loadGraphic(Paths.image('advice'));
		advice.scrollFactor.set();
		advice.screenCenter();
		advice.antialiasing = true;
		add(advice);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
            FlxG.sound.play(Paths.sound('confirmMenu'));
            new FlxTimer().start(1, function(tmr:FlxTimer){
			    LoadingState.loadAndSwitchState(new PlayState());
            });
		}
		super.update(elapsed);
	}
}
