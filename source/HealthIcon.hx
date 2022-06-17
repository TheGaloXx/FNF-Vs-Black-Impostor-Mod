package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-espacio', [0, 1], 0, false, isPlayer);
		animation.add('bf-void', [26, 29], 0, false, isPlayer);
		animation.add('black', [24, 25], 0, false, isPlayer);
		animation.add('blackcrazy', [24, 25], 0, false, isPlayer);
		animation.add('blackespacio', [24, 25], 0, false, isPlayer);
		animation.add('blackinicio', [24, 25], 0, false, isPlayer);
		animation.add('blackvoid', [27, 28], 0, false, isPlayer);
		animation.add('left', [24, 25], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 50, sprTracker.y - 15);
	}
}
