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
    """$\\text{Ampere}$, often shortened to $\\text{amp}$, 
is the SI unit of electric current and is one of the seven SI base units defined as:

$\\text{A} \\equiv \\frac{\\textit{C}}{\\textit{s}} 
\\equiv \\frac{\\textit{coulomb}}{\\textit{second}} 
\\equiv \\frac{\\text{joule}}{\\text{weber}}$
"""

ampere2 =
    """$\\text{Ampere}$, often shortened to $\\text{amp}$, 
is the SI unit of electric current and is one of the seven SI base units defined as:

$\\text{A} \\equiv \\frac{\\textit{C}}{\\textit{s}} 
\\equiv \\frac{\\textit{coulomb}}{\\textit{second}} 
\\equiv \\frac{\\text{joule}}{\\text{weber}}$
"""
avogadroConstant ="""
$\\text{Avogadro Constant}$ is defined as:
$L = \\frac{N}{n}$, where $N$ is the number of particles and $n$ is the amount of substance.
"""

bohrMagneton =
    """
$\\text{Bohr Magneton}$ is defined as:
$\\mu_B = \\frac{e\\hbar}{2m_e}$, 
where $e\\;$ is the elementary charge, $\\hbar\\;$ is the Planck constant, 
and ${m_e\\;}$ is the rest mass of electron.
"""

bohrRadius = """
$\\text{Bohr Radius}\\;$ is defined as:
$a_0 = \\frac{4\\pi \\varepsilon_0 \\hbar^2}{m_ee^2}$, where $\\varepsilon_0$ is the electric constant, $\\hbar$ is the reduced Planck constant, $m_e$  is the rest mass of electron, and $e$ is the elementary charge.
"""

comptonWavelength = """
$\\text{Compton Wavelength}\\;$ is defined as:
 $\\lambda_C = \\frac{h}{mc_0}$, where $h$ is the Planck constant,
 $m$ is the rest mass of a particle, and $c_0$ is the speed of light in vacuum.
"""

conditionalEntropy = """
$\\text{Conditional Entropy}\\;$ is defined as:
$$H(X \\mid Y) = \\sum_{i=1}^n \\sum_{j=1}^m p(x_i,y_j)I(x_i \\mid y_j)$$

where $p(x_i, y_j)$ is the joint probability of events $x_i$ and $y_j$ and $I(x_i \\mid y_j)$ is the conditional information content.
"""
fineStructureConstant =
    """
$\\text{Fine Structure Constant}$ is defined as:
$a = \\frac{e^2}{4\\pi\\varepsilon_0\\hbar c_0}$, where $e$ is the elementary charge, $\\varepsilon_0$ is the electric constant, item $\\hbar$ is the reduced Planck constant, and $c_0$ is the speed of light in vacuum.
"""

coherentUnitOfSystem =
    """
$\\text{Coherent Unit of Measurement}$, for a unit system, is defined as:
a defined unit that may be expressed as a product of powers of the system's base units with the proportionality factor of one. 
A system of units is coherent with respect to a system of quantities and equations if the system of units is chosen in such a way that the equations between numerical values have 
exactly the same form (including the numerical factors) as the corresponding equations between the quantities. 
For example, the 'newton' and the 'joule'. 
These two are, respectively, the force that causes one kilogram to be accelerated at 1 metre per second per  second, and the work done by 1 newton acting over 1 metre. 
Being coherent refers to this consistent use of 1. 
In the old c.g.s. system , with its base units the centimetre and the gram, the corresponding coherent units were the dyne and the erg, respectively the force that causes 1 gram 
to be accelerated at 1 centimetre per second per second, and the work done by 1 dyne acting over 1 centimetre.  
So 1 $\\text{newton} = 10^5 \\text{dyne, 1 joule} = 10^7 \\text{erg}$, making each of the four compatible in a decimal sense within its respective other system, but not coherent therein.
"""

countablyInfinite =
    """
A set of numbers is called $\\text{countably infinite}$ if there is a way to enumerate them.
Formally this is done with a bijection function that associates each number in the set with exactly one of the positive integers.  
The set of all fractions is also countably infinite.  
In other words, any set $X$ that has the same cardinality as the set of the natural numbers, 
or $ | \\text{X} |  >  | \\mathbb N | $, 
is said to be a countably infinite set.
"""

hartreeEnergy = """
$\\text{Hartree Energy}$ has the symbol: $E_h\\,$ or $Ha$,
 also known as the $\\textit{Hartree}$, is the atomic unit of energy.
 The hartree energy is equal to the absolute value of the electric potential energy of the hydrogen atom in its ground state.
 The energy of the electron in an H-atom in its ground state is
 $-E_H$, where $E_H= 2 R_\\infty \\cdot hc_0$.
 
 The 2006 CODATA recommended value was $E_H = 4.35974394(22) \\times 10^{-18} J = 27.21138386(68) eV$.
"""

informationContent = """
$\\text{Information Content}\\;$ refers to the meaning of information as opposed to the form or carrier of the information.
This is defined as:

$$I(x) = \\log_{2}{\\frac{1}{p(x)}} Sh =  \\log{\\frac{1}{p(x)}} Hart = \\ln{\\frac{1}{p(x)}} nat$$

where $p(x)$ is the probability of event $x$.
"""

irrelevance = """
The Quantity Kind $\\text{Irrelevance}\\;$ is defined as:
$$H(Y \\mid X) = H(X \\mid Y) + H(Y) - H(X)$$

where $H(X \\mid Y)$ is equivocation and $H$ is entropy.
"""

qkdv_A0Em1L2I0M1H0Tm2D0 = """
$\\text{Dimension Vector qkdv:A0E-1L2I0M1H0T-2D0}\\;$ is defined as:
$m^2 \\cdot kg \\cdot s^{-2} \\cdot  A^{-1}$
"""

quantityKindDimensionVector = """
$\\text{quantityKindDimensionVector}\\;$ expresses the rational powers of the dimensional exponents,
 $\\alpha, \\, \\beta, \\, \\gamma, \\, \\delta, \\, \\epsilon, \\, \\eta, \\, \\nu$, which can be positive, negative, or zero.
For example, the dimension of the physical quantity kind $\\it{speed}$ is $\\boxed{length/time}$, $L/T$ or $LT^{-1}$,
 and the dimension of the physical quantity kind force is 
 $\\boxed{mass \\times acceleration}\\ $ or $\\boxed{mass \\times (length/time)/time}$, $ML/T^2$ or $MLT^{-2}$ respectively.
"""

quantityType =
    """
$\\text{Quantity Type}\\;$ is an enumeration of quanity kinds. 
It specializes $\\text{dtype:EnumeratedValue}\\ $ by constraining $\\text{dtype:value}\\ $
 to instances of $\\text{qudt:QuantityKind}$.
"""

unit="""
A $\\text{Unit of Measure}$, or $\\text{unit}$, is a particular quantity value that has been chosen as a scale for
 measuring other quantities the same kind (more generally of equivalent dimension). 
For example, the meter is a quantity of length that has been rigorously defined and standardized
 by the BIPM (International Board of Weights and Measures). 
Any measurement of the length can be expressed as a number multiplied by the unit meter. 
More formally, the value of a physical quantity Q with respect to a unit (U) is expressed as
 the scalar multiple of a real number (n) and U, as  $Q = nU$.
"""
