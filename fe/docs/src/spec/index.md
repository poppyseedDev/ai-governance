# Fe Language Specification

<div class="warning">
  Warning: This is a work in progress document. It is incomplete and specifications aren't stable yet.
</div>

* [Notation](notation.md)
* [Lexical Structure](lexical_structure/index.md)
    * [Keywords](lexical_structure/keywords.md)
    * [Identifiers](lexical_structure/identifiers.md)
    * [Tokens](lexical_structure/tokens.md)
* [Comments](comments.md)
* [Items](items/index.md)
    * [Visibility and Privacy](items/visibility_and_privacy.md)
    * [Functions](items/functions.md)
    * [Structs](items/structs.md)
    * [Traits](items/traits.md)
    * [Enums](items/enums.md)
    * [Type Aliases](items/type_aliases.md)
    * [Contracts](items/contracts.md)
* [Statements](statements/index.md)
    * [`pragma` Statement](statements/pragma.md)
    * [Assignment Statement](statements/assign.md)
    * [Augmenting Assignment Statement](statements/augassign.md)
    * [`const` Statement](statements/const.md)
    * [`let` Statement](statements/let.md)
    * [`revert` Statement](statements/revert.md)
    * [`return` Statement](statements/return.md)
    * [`if` Statement](statements/if.md)
    * [`for` Statement](statements/for.md)
    * [`while` Statement](statements/while.md)
    * [`break` Statement](statements/break.md)
    * [`continue` Statement](statements/continue.md)
    * [`assert` Statement](statements/assert.md)
* [Expressions](expressions/index.md)
    * [Call expressions](expressions/call.md)
    * [Tuple expressions](expressions/tuple.md)
    * [List expressions](expressions/list.md)
    * [Index expressions](expressions/index.md)
    * [Attribute expressions](expressions/attribute.md)
    * [Name expressions](expressions/name.md)
    * [Literal expressions](expressions/literal.md)
    * [Arithmetic Operators](expressions/arithmetic_operators.md)
    * [Comparison Operators](expressions/comparison_operators.md)
    * [Boolean Operators](expressions/boolean_operators.md)
    * [Unary Operators](expressions/unary_operators.md)
* [Type System](type_system/index.md)
    * [Types](type_system/types/index.md)
        * [Boolean Type](type_system/types/boolean.md)
        * [Contract Type](type_system/types/contract.md)
        * [Numeric Types](type_system/types/numeric.md)
        * [Tuple Types](type_system/types/tuple.md)
        * [Array Types](type_system/types/array.md)
        * [Struct Types](type_system/types/struct.md)
        * [Enum Types](type_system/types/enum.md)
        * [Address Type](type_system/types/address.md)
        * [Map Type](type_system/types/map.md)
        * [String Type](type_system/types/string.md)
* [Data Layout](data_layout/index.md)
    * [Stack](data_layout/stack.md)
    * [Storage](data_layout/storage/index.md)
        * [Constant size values in storage](data_layout/storage/constant_size_values_in_storage.md)
        * [Maps in storage](data_layout/storage/maps_in_storage.md)
        * [`to_mem()` function](data_layout/storage/to_mem_function.md)
    * [Memory](data_layout/memory/index.md)
        * [Sequence types in memory](data_layout/memory/sequence_types_in_memory.md)
* [Function calls](function_calls.md)