/**
 * User: John Lindquist
 * Date: Sep 21, 2010
 * Time: 11:47:40 PM
 */
package controller
{
    import flash.display.Sprite;

    import view.Ball;
    import view.BallMediator;

    public class CreateBallCommand
	{
        private var context:Sprite = $(Sprite).get() as Sprite;
        
        public function execute():void
        {
            var ball:Ball = $(Ball).mediate(BallMediator) as Ball;
            ball.x = Math.random() * 500;
            ball.y = Math.random() * 375;
            context.addChild(ball);
		}
	}
}