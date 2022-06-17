package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;

class Character extends FlxSprite
{
	public var animOffsets:Map<String, Array<Dynamic>>;
	public var debugMode:Bool = false;

	public var isPlayer:Bool = false;
	public var curCharacter:String = 'bf';

	public var holdTimer:Float = 0;

	public function new(x:Float, y:Float, ?character:String = "bf", ?isPlayer:Bool = false)
	{
		super(x, y);

		animOffsets = new Map<String, Array<Dynamic>>();
		curCharacter = character;
		this.isPlayer = isPlayer;

		var tex:FlxAtlasFrames;
		antialiasing = true;

		switch (curCharacter)
		{
			case 'gf':
				// GIRLFRIEND CODE
				tex = Paths.getSparrowAtlas('characters/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('jajaja', 'GF Dancing Beat0', 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);
				addOffset('jajaja', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'dad':
				// DAD ANIMATION LOADING CODE
				tex = Paths.getSparrowAtlas('characters/DADDY_DEAREST', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'black':
					tex = Paths.getSparrowAtlas('characters/black_assets');
					frames = tex;
					animation.addByPrefix('singLEFT', 'black left', 24, false);
					animation.addByPrefix('singRIGHT', 'black right', 24, false);
					animation.addByPrefix('singUP', 'black up', 24, false);
					animation.addByPrefix('singDOWN', 'black down', 24, false);
					animation.addByPrefix('mirar', 'black mirar atras', 24, false);
					animation.addByPrefix('idle', 'black idle', 24);


					addOffset('idle');

					addOffset("singUP", -20, 29);
					addOffset("singRIGHT", -21, 9);
					addOffset("singLEFT", 54, 36);
					addOffset("singDOWN", -13, 7);
					addOffset("mirar", 7, 0);

			case 'blackcrazy':
				tex = Paths.getSparrowAtlas('characters/black_crazy');
				frames = tex;
				animation.addByPrefix('singLEFT', 'black crazy left', 24, false);
				animation.addByPrefix('singRIGHT', 'black crazy right', 24, false);
				animation.addByPrefix('singUP', 'black crazy up', 24, false);
				animation.addByPrefix('singDOWN', 'black crazy down', 24, false);
				animation.addByPrefix('idle', 'black crazy idle', 24);

				addOffset('idle');

				addOffset("singUP", 156, 110);
				addOffset("singRIGHT", 12, -31);
				addOffset("singLEFT", 348, 24);
				addOffset("singDOWN", 157, -55);

			case 'blackespacio':
				tex = Paths.getSparrowAtlas('characters/blackEspacio');
				frames = tex;
				animation.addByPrefix('singLEFT', 'black espacio left', 24, false);
				animation.addByPrefix('singRIGHT', 'black espacio right', 24, false);
				animation.addByPrefix('singUP', 'black espacio up', 24, false);
				animation.addByPrefix('singDOWN', 'black espacio down', 24, false);
				animation.addByPrefix('bomba', 'bomba', 24, false);
				animation.addByPrefix('idle', 'black espacio idle', 24, true);

				addOffset("idle");
				addOffset("singUP", 10, 29);
				addOffset("singRIGHT", 98, 39);
				addOffset("singLEFT", 51, -6);
				addOffset("singDOWN", -69, 70);
				addOffset("bomba", 7, 0);

			case 'blackinicio':
				tex = Paths.getSparrowAtlas('characters/blackinicio');
				frames = tex;
				animation.addByPrefix('black sacar cuchillo', 'black sacar cuchillo', 24, false);
				animation.addByPrefix('idle', 'black idle', 24);


				addOffset('idle');

				addOffset("black sacar cuchillo", 9, 0);

				playAnim('idle');

			case 'blackvoid':
					tex = Paths.getSparrowAtlas('characters/blackVoid');
					frames = tex;
					animation.addByPrefix('singLEFT', 'black left', 24, false);
					animation.addByPrefix('singRIGHT', 'black right', 24, false);
					animation.addByPrefix('singUP', 'black up', 24, false);
					animation.addByPrefix('singDOWN', 'black down', 24, false);
					animation.addByPrefix('idle', 'black idle', 24);


					addOffset('idle');

					addOffset("singUP", 0, 79);
					addOffset("singRIGHT", 139, 0);
					addOffset("singLEFT", 200, 0);
					addOffset("singDOWN", 87, 1);
	
			case 'left':
				tex = Paths.getSparrowAtlas('characters/left');
				frames = tex;
				animation.addByPrefix('defeat', 'defeat', 24, false);

				addOffset('defeat');

			case 'bf':
				var tex = Paths.getSparrowAtlas('characters/BOYFRIEND', 'shared');
				frames = tex;

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'bf-espacio':
				var tex = Paths.getSparrowAtlas('characters/bfEspacio', 'shared');
				frames = tex;

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -19, 27);
				addOffset("singRIGHT", 22, -7);
				addOffset("singLEFT", 102, -6);
				addOffset("singDOWN", 29, -29);
				addOffset("singUPmiss", 1, 7);
				addOffset("singRIGHTmiss", 2, -3);
				addOffset("singLEFTmiss", 14, -6);
				addOffset("singDOWNmiss", 29, -29);
				addOffset("hey", 7, 1);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);

				playAnim('idle');

				flipX = true;

			case 'bf-void':
				var tex = Paths.getSparrowAtlas('characters/bfVoid', 'shared');
				frames = tex;

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('dodge down', 'boyfriend dodge down', 24, false);
				animation.addByPrefix('dodge up', 'boyfriend dodge up', 24, false);
				animation.addByPrefix('dodge right', 'boyfriend dodge right', 24, false);
				animation.addByPrefix('dodge left', 'boyfriend dodge left', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				addOffset('idle', 26, 14);
				addOffset("singUP", -22, 51);
				addOffset("dodge up", 21, 9);
				addOffset("singRIGHT", -24, 8);
				addOffset("dodge right", 3, 1);
				addOffset("singLEFT", 40, 6);
				addOffset("dodge left", 90, -34);
				addOffset("singDOWN", 13, -40);
				addOffset("dodge down", 20, -38);
				addOffset("singUPmiss", -19, 20);
				addOffset("singRIGHTmiss", -28, 23);
				addOffset("singLEFTmiss", 10, 21);
				addOffset("singDOWNmiss", 6, -22);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);

				playAnim('idle');

				flipX = true;
		}

		dance();

		if (isPlayer)
		{
			flipX = !flipX;

			// Doesn't flip for BF, since his are already in the right place???
			if (!curCharacter.startsWith('bf'))
			{
				// var animArray
				var oldRight = animation.getByName('singRIGHT').frames;
				animation.getByName('singRIGHT').frames = animation.getByName('singLEFT').frames;
				animation.getByName('singLEFT').frames = oldRight;

				// IF THEY HAVE MISS ANIMATIONS??
				if (animation.getByName('singRIGHTmiss') != null)
				{
					var oldMiss = animation.getByName('singRIGHTmiss').frames;
					animation.getByName('singRIGHTmiss').frames = animation.getByName('singLEFTmiss').frames;
					animation.getByName('singLEFTmiss').frames = oldMiss;
				}
			}
		}
	}

	override function update(elapsed:Float)
	{
		if (!curCharacter.startsWith('bf'))
		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}

			var dadVar:Float = 4;

			if (curCharacter == 'dad')
				dadVar = 6.1;
			if (holdTimer >= Conductor.stepCrochet * dadVar * 0.001)
			{
				dance();
				holdTimer = 0;
			}
		}

		switch (curCharacter)
		{
			case 'gf':
				if (animation.curAnim.name == 'hairFall' && animation.curAnim.finished)
					playAnim('danceRight');
		}

		super.update(elapsed);
	}

	private var danced:Bool = false;

	/**
	 * FOR GF DANCING SHIT
	 */
	public function dance()
	{
		if (!debugMode)
		{
			switch (curCharacter)
			{
				case 'gf':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				default:
					playAnim('idle');
			}
		}
	}

	public function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0):Void
	{
		animation.play(AnimName, Force, Reversed, Frame);

		var daOffset = animOffsets.get(AnimName);
		if (animOffsets.exists(AnimName))
		{
			offset.set(daOffset[0], daOffset[1]);
		}
		else
			offset.set(0, 0);

		if (curCharacter == 'gf')
		{
			if (AnimName == 'singLEFT')
			{
				danced = true;
			}
			else if (AnimName == 'singRIGHT')
			{
				danced = false;
			}

			if (AnimName == 'singUP' || AnimName == 'singDOWN')
			{
				danced = !danced;
			}
		}
	}

	public function addOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animOffsets[name] = [x, y];
	}
}
