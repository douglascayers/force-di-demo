public class ChatApp {

    private IMessage message { get; set; }

    public ChatApp( IMessage message ) {
        this.message = message;
    }

    public ChatApp() {
        this.message = (IMessage) di_Injector.Org.getInstance('ChatAppMessage');
    }

    public String greetings() {
        return this.message.saySomething();
    }

}