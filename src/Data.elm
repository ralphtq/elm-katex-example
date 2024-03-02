module Data exposing (..)


initialText =
    """
Pythagoras sez: $a^2 + b^2 = c^2$.  Extremely cool!

This will be on the test:

$$
\\int_0^1 x^n dx = \\frac{1}{n+ 1}
$$

Study hard!

"""

ampere =
    """The ~~\\text{ampere}~~, often shortened to ~~\\text{amp}~~, 
is the SI unit of electric current and is one of the seven SI base units defined as:

~~\\text{A} \\equiv \\frac{\\textit{C}}{\\textit{s}} 
\\equiv \\frac{\\textit{coulomb}}{\\textit{second}} 
\\equiv \\frac{\\text{joule}}{\\text{weber}}~~
"""

bohrMagneton =
    """
~~\\mu_B = \\frac{e\\hbar}{2m_e}~~, 
where ~~e\\;~~ is the elementary charge, ~~\\hbar\\;~~ is the Planck constant, 
and ~~{m_e\\;}~~ is the rest mass of electron.
"""


fineStructureConstant =
    """
~~a = \\frac{e^2}{4\\pi\\varepsilon_0\\hbar c_0}~~, where ~~e~~ is the elementary charge, ~~\\varepsilon_0~~ is the electric constant, item ~~\\hbar~~ is the reduced Planck constant, and ~~c_0~~ is the speed of light in vacuum.
"""

coherentUnitOfSystem =
    """
A coherent unit of measurement for a unit system is a defined unit that may be expressed as a product of powers of the system's base units with the proportionality factor of one. 
A system of units is coherent with respect to a system of quantities and equations if the system of units is chosen in such a way that the equations between numerical values have 
exactly the same form (including the numerical factors) as the corresponding equations between the quantities. 
For example, the 'newton' and the 'joule'. 
These two are, respectively, the force that causes one kilogram to be accelerated at 1 metre per second per  second, and the work done by 1 newton acting over 1 metre. 
Being coherent refers to this consistent use of 1. 
In the old c.g.s. system , with its base units the centimetre and the gram, the corresponding coherent units were the dyne and the erg, respectively the force that causes 1 gram 
to be accelerated at 1 centimetre per second per second, and the work done by 1 dyne acting over 1 centimetre.  
So 1 ~~\\text{newton} = 10^5 \\text{dyne, 1 joule} = 10^7 \\text{erg}~~, making each of the four compatible in a decimal sense within its respective other system, but not coherent therein.
"""

countablyInfinite =
    """
A set of numbers is called countably infinite if there is a way to enumerate them.
Formally this is done with a bijection function that associates each number in the set with exactly one of the positive integers.  
The set of all fractions is also countably infinite.  
In other words, any set ~~X~~ that has the same cardinality as the set of the natural numbers, 
or ~~ | \\text{X} |  >  | \\mathbb N | ~~, 
is said to be a countably infinite set.
"""

quantityType =
    """
~~\\text{Quantity Type}\\;~~ is an enumeration of quanity kinds. 
It specializes ~~\\text{dtype:EnumeratedValue}\\ ~~ by constraining ~~\\text{dtype:value}\\ ~~
 to instances of ~~\\text{qudt:QuantityKind}~~.
"""
