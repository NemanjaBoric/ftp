import std.stdio;
import std.string;

interface State
{
    void sendData(string data);
    string getData();
}


class ConsoleState: State
{
    override void sendData(string data)
    {
        writeln(data);
    }

    override string getData()
    {
        return readln();
    }
}


unittest
{
    State s = new ConsoleState();
    s.sendData("Write \"Hej!\":");
    assert(s.getData().strip() == "Hej!");
}
