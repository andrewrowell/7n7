#~/usr/local/bin/io

// Receivers on the left get messages on the right.
"Hello world" println

// There are no classes, only objects and their clones.
Box := Object clone

// Objects have slots, which can have things assigned to them.
Box description := "This is a box"
Box description println

// We can see the assigned slots in an object.
Box slotNames println

// Uppercase vs Lowercase is an idiom for being a Type or an Instance
mailbox := Box clone

// Note the lack of a type method in an "instance" object's slots
mailbox slotNames println

// Methods...
Box sayName := method(
	"Dave" println
)
Box sayName

// You can see all named objects
Lobby println

// You can make singletons
IsASingleton := Object clone
IsASingleton clone := IsASingleton
alice := IsASingleton clone
bob := IsASingleton clone
(alice == bob) println
