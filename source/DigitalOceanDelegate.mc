using Toybox.WatchUi as Ui;

class DigitalOceanDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new DigitalOceanMenuDelegate(), Ui.SLIDE_UP);
        return true;
    }

	function onNextPage() {
		var view = new SalinityView();
    	var delegate = new DigitalOceanDelegate();
    	Ui.switchToView(view, delegate, Ui.SLIDE_IMMEDIATE);
		return true;
	}

}