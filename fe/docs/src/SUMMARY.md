# Summary

[Introduction](index.md)

* [Quickstart](quickstart/index.md)
    * [Installation](quickstart/installation.md)
    * [Write your first contract](quickstart/first_contract.md)
    * [Deploying a contract to a testnet](quickstart/deploy_contract.md)
    * [Using projects](quickstart/projects.md)
* [Development](development/index.md)
    * [Build & Test](development/build.md)
    * [Release](development/release.md)
* [Specification (WIP)](spec/index.md)
    * [Notation](spec/notation.md)
    * [Lexical Structure](spec/lexical_structure/index.md)
        * [Keywords](spec/lexical_structure/keywords.md)
        * [Identifiers](spec/lexical_structure/identifiers.md)
        * [Tokens](spec/lexical_structure/tokens.md)
    * [Comments](spec/comments.md)
    * [Items](spec/items/index.md)
        * [Visibility and Privacy](spec/items/visibility_and_privacy.md)
        * [Functions](spec/items/functions.md)
        * [Structs](spec/items/structs.md)
        * [Traits](spec/items/traits.md)
        * [Enums](spec/items/enums.md)
        * [Type Aliases](spec/items/type_aliases.md)
        * [Contracts](spec/items/contracts.md)
    * [Statements](spec/statements/index.md)
        * [`pragma` Statement](spec/statements/pragma.md)
        * [`const` Statement](spec/statements/const.md)
        * [`let` Statement](spec/statements/let.md)
        * [Assignment Statement](spec/statements/assign.md)
        * [Augmenting Assignment Statement](spec/statements/augassign.md)
        * [`revert` Statement](spec/statements/revert.md)
        * [`return` Statement](spec/statements/return.md)
        * [`if` Statement](spec/statements/if.md)
        * [`for` Statement](spec/statements/for.md)
        * [`while` Statement](spec/statements/while.md)
        * [`break` Statement](spec/statements/break.md)
        * [`continue` Statement](spec/statements/continue.md)
        * [`match` Statement](spec/statements/match.md)
        * [`assert` Statement](spec/statements/assert.md)
    * [Expressions](spec/expressions/index.md)
        * [Call expressions](spec/expressions/call.md)
        * [Tuple expressions](spec/expressions/tuple.md)
        * [List expressions](spec/expressions/list.md)
        * [Struct expressions](spec/expressions/struct.md)
        * [Index expressions](spec/expressions/indexing.md)
        * [Attribute expressions](spec/expressions/attribute.md)
        * [Name expressions](spec/expressions/name.md)
        * [Path expressions](spec/expressions/path.md)
        * [Literal expressions](spec/expressions/literal.md)
        * [Arithmetic Operators](spec/expressions/arithmetic_operators.md)
        * [Comparision Operators](spec/expressions/comparison_operators.md)
        * [Boolean Operators](spec/expressions/boolean_operators.md)
        * [Unary Operators](spec/expressions/unary_operators.md)
    * [Type System](spec/type_system/index.md)
        * [Types](spec/type_system/types/index.md)
            * [Boolean Type](spec/type_system/types/boolean.md)
            * [Contract Type](spec/type_system/types/contract.md)
            * [Numeric Types](spec/type_system/types/numeric.md)
            * [Tuple Types](spec/type_system/types/tuple.md)
            * [Array Types](spec/type_system/types/array.md)
            * [Struct Types](spec/type_system/types/struct.md)
            * [Enum Types](spec/type_system/types/enum.md)
            * [Address Type](spec/type_system/types/address.md)
            * [Map Type](spec/type_system/types/map.md)
            * [String Type](spec/type_system/types/string.md)
            * [Unit Type](spec/type_system/types/unit.md)
            * [Function Type](spec/type_system/types/function.md)
    * [Data Layout](spec/data_layout/index.md)
        * [Stack](spec/data_layout/stack.md)
        * [Storage](spec/data_layout/storage/index.md)
            * [Constant size values in storage](spec/data_layout/storage/constant_size_values_in_storage.md)
            * [Maps in storage](spec/data_layout/storage/maps_in_storage.md)
            * [`to_mem()` function](spec/data_layout/storage/to_mem_function.md)
        * [Memory](spec/data_layout/memory/index.md)
            * [Sequence types in memory](spec/data_layout/memory/sequence_types_in_memory.md)
    * [Function calls](spec/function_calls.md)

* [Release Notes](release_notes.md)
* [Code of Conduct](code_of_conduct.md)