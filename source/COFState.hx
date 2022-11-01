package;

import Paths;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.FlxState;

class COFState extends FlxState
{
    public var DisplayText:FlxText;

    override function create()
    {
		super.create();

                DisplayText = new FlxText(0, 0, FlxG.width, "NOW PLAYING:\nCreepy Ol Forest", 32);
		DisplayText.setFormat(Paths.font("vcr.ttf"), 54, FlxColor.WHITE, FlxTextAlign.CENTER,FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

		add(DisplayText);

    FlxG.sound.playMusic(Paths.music('Creepy_Ol_Forest'), 1);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ESCAPE)
	{
		FlxG.switchState(new MainMenuState());
	}
    }
}