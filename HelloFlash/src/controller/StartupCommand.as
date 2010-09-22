/**
 * User: John Lindquist
 * Date: Sep 22, 2010
 * Time: 1:33:57 AM
 */
package controller
{
    import flash.display.Sprite;

    import view.Readout;
    import view.ReadoutMediator;

    public class StartupCommand
    {
        private var context:Sprite = $(Sprite).get() as Sprite;
        
        public function execute():void
        {
            var readout:Readout = $(Readout).mediate(ReadoutMediator) as Readout;
            context.addChild(readout);

            $(CreateBallCommand).run();
        }
    }
}