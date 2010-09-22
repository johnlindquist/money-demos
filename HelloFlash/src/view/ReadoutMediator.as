/**
 * User: John Lindquist
 * Date: Sep 22, 2010
 * Time: 2:30:23 AM
 */
package view
{
    import controller.CreateBallCommand;

    import model.StatsModel;

    public class ReadoutMediator
    {
        private var readout:Readout;

        private var statsModel:StatsModel = $(StatsModel).get() as StatsModel;

        public function ReadoutMediator(readout:Readout)
        {
            this.readout = readout;

            $(CreateBallCommand).watch(onBallCreated)
        }
        private function onBallCreated():void
        {
            readout.setText('Click count: ' + statsModel.ballClickCount);
        }
    }
}