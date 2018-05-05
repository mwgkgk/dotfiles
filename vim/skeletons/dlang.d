import std.stdio;

void main(string[] args) @safe {
    args = args[1 .. $];

    switch (args.length) {
    case 0:
        writeln("no args");
        break;
    case 1:
        writeln("one arg");
        break;
    default:
        writeln("many args");
    }
}
