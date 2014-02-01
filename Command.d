import State;
import std.string;

interface Callable
{
    bool opCall(string data);
}

abstract class Command 
{
    bool opCall(string data);

    this(State s)
    {
        this.state = s;
    }
    
    protected State state;
}


private class TCommand: Command
{
    override bool opCall(string data)
    {
        state.sendData("Type in \"Hello!\":");

        if(state.getData().strip() == "Hello!")
            return true;
        else 
            return false;
    }

    this(State s)
    {
        super(s);
    }
}

unittest
{
   State s = new ConsoleState();
   Command t = new TCommand(s);
   assert(t()); 
}



