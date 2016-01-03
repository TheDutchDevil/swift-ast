/*
   Copyright 2016 Ryuichi Saito, LLC

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

enum EmptyEnum {}
@a @b @c enum EmptyEnumWithAttributes {}
public enum PublicEmptyEnum {}
@x private enum PrivateEmptyEnumWithAttributeX {}

internal (set) enum CannotApplyModifierEnum {}

/*
Parser error: 'internal' modifier cannot be applied to this declaration.

(top-level-declaration path=/Users/ryuichis/Projects/L/swift-ast/Integrations/EnumDeclarationTest.swift range=1:1-30:1
  (enum-declaration 'EmptyEnum' access='default' path=/Users/ryuichis/Projects/L/swift-ast/Integrations/EnumDeclarationTest.swift range=17:1-17:18)
  (enum-declaration 'EmptyEnumWithAttributes' attributes=a,b,c access='default' path=/Users/ryuichis/Projects/L/swift-ast/Integrations/EnumDeclarationTest.swift range=18:1-18:41)
  (enum-declaration 'PublicEmptyEnum' access='public' path=/Users/ryuichis/Projects/L/swift-ast/Integrations/EnumDeclarationTest.swift range=19:1-19:31)
  (enum-declaration 'PrivateEmptyEnumWithAttributeX' attributes=x access='private' path=/Users/ryuichis/Projects/L/swift-ast/Integrations/EnumDeclarationTest.swift range=20:1-20:50)
  (enum-declaration 'CannotApplyModifierEnum' access='default' path=/Users/ryuichis/Projects/L/swift-ast/Integrations/EnumDeclarationTest.swift range=22:1-22:47)
)
*/