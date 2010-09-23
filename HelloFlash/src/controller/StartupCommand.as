/**
 * User: John Lindquist
 * Date: Sep 22, 2010
 * Time: 1:33:57 AM
 */
package controller
{
    import flash.display.Sprite;

    import model.StatsModel;

    import view.Readout;
    import view.ReadoutMediator;

    public class StartupCommand extends Object
    {
        include "../../includes/inject"
        private var sprite:Sprite;

        public function execute():void
        {
            $(StatsModel).set();
            
            //you explicitly mediate when you create views
            var readout:Readout = $(Readout).mediate(ReadoutMediator) as Readout;
            sprite.addChild(readout);

            //mapping a command to string constant
            $(CreateBallCommand, HelloFlash.CREATE_BALL).mapCommand();
            $(CreateBallCommand).run();
        }
    }
}