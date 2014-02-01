import std.stdio;
import std.string;

interface State
{
    void sendData(string data);
    string getData();
}


class ConsoleState: State
{
    void sendData(string data)
    {
        writeln(data);
    }

    string getData()
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
