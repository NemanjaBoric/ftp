import Command;
import State;

class UserCommand: Command
{
    override bool opCall(string data)
    {
        state.sendData("USER " + data);
    }   
};


unittest
{
    State s = new ConsoleState();
    Command cmd = new UserCommand(s);

    cmd();
}
