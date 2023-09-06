# units

> Zsh script to convert a real number from one unit to another

## Installation / uninstallation

The following additional variables are supported:
- `DESTDIR` -- determines environment for staged installs,
- `BINDIR`  -- determines where the script will be installed (default: `/usr/local/bin`).

To **install**, just run `make` with superuser privileges.\
To **uninstall**, just run `make uninstall` with the same privileges.

To change the value of any `make` variables, run, e.g., `make FOO=bar install`

## Requirements

The script requires the following to run:
- `zsh`

The provided Makefile assumes a linux operating system.


## Usage

    units

        Converts a real number from one unit to another

        usage: units  [operation] NUM FROM TO
            NUM:  a number
            FROM: units of NUM
            TO:   units to which we want to convert NUM

        operations:
            -h               Show this message.

        Valid conversion units:

            [mass]

                lb       :: pounds
                kg       :: kilograms

            [energy]

                hartree  :: Hartree atomic units (au)
                rydberg  :: Rydberg
                eV       :: electron volts
                J        :: Joules
                C        :: Celcius (E=kT)
                K        :: Kelving (E=kT)
                invcm    :: Wavenumbers (cm^-1)
                Hz       :: Hertz (frequency)

            [distance]

                ym       :: yoctometers (1e-24 m)
                zm       :: zeptometers (1e-21 m)
                am       :: attometers  (1e-18 m)
                fm       :: femtometers (1e-15 m)
                pm       :: picometers  (1e-12 m)
                nm       :: nanometers  (1e-9  m)
                μm       :: micrometers (1e-6  m)
                mm       :: millimeters (1e-3  m)
                cm       :: centimeters (1e-2  m)
                dm       :: decimeters  (1e-1  m)
                m        :: meters
                km       :: kilometers  (1e+3  m)

                ft       :: feet
                mi       :: miles
                in       :: inches

            Note: Distance and energy can be related to each other through the relation

                c = λ*ν,

            where λ is a wavelength (meters), ν is a frequency (Hz), and c is the speed of
            light in a vacuum (299792458 m/s) which means the following is a valid implementation
            of units :

                units 1 ev μm
