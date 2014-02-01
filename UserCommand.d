import Command;
import State;

class UserCommand: Command
{
    override bool opCall(string data)
    {
        state.sendData("USER " ~ data);
        return true;
    }

    this(State s)
    {
        super(s);
    }   
};


unittest
{
    State s = new ConsoleState();
    Command cmd = new UserCommand(s);

    cmd("Nemanja");

}
