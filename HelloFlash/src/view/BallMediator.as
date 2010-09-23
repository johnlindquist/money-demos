/**
 * User: John Lindquist
 * Date: Sep 22, 2010
 * Time: 2:30:31 AM
 */
package view
{
    import controller.CreateBallCommand;

    import flash.events.MouseEvent;

    import model.StatsModel;

    public class BallMediator
    {
        include "../../includes/inject"
        private var statsModel:StatsModel;
        private var ball:Ball;

        public function BallMediator(ball:Ball)
        {
            this.ball = ball;
            ball.addEventListener(MouseEvent.CLICK, onBallClick)
            $(CreateBallCommand).watch(onSomeBackClicked);
        }

        private function onSomeBackClicked():void
        {
            ball.poke();
        }
        private function onBallClick(event:MouseEvent):void
        {
            statsModel.recordBallClick();
            //fires off CreateBallCommand
            $().dispatch(HelloFlash.CREATE_BALL);
        }
    }
}