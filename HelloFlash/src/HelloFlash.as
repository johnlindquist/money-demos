package
{
    import controller.StartupCommand;

    import flash.display.Sprite;

    public class HelloFlash extends Sprite
    {
        //This demo duplicates the functionality of the Robotlegs "Hello Flash" demo
        
        public function HelloFlash()
        {
            $(Sprite, this).set();
            $(StartupCommand).run();
        }
    }
}
