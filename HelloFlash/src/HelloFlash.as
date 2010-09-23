package
{
    import controller.StartupCommand;

    import flash.display.Sprite;

    public class HelloFlash extends Sprite
    {
        public static const CREATE_BALL:String = "createBall";

        public function HelloFlash()
        {
            $(Sprite, this).set();
            $(StartupCommand).run();
        }
    }
}
