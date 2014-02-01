import State;
import std.string;

interface Callable
{
    bool opCall();
}

abstract class Command 
{
    bool opCall();

    this(State s)
    {
        this.state = s;
    }
    
    protected State state;
}


private class TCommand: Command
{
    override bool opCall()
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



