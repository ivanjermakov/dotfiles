from xkeysnail.transform import *

define_multipurpose_modmap({
})

define_keymap(None, {
    Combo(Modifier.CAPS, Key.I): Key.UP,
    Combo(Modifier.CAPS, Key.J): Key.LEFT,
    Combo(Modifier.CAPS, Key.K): Key.DOWN,
    Combo(Modifier.CAPS, Key.L): Key.RIGHT,

    Combo(Modifier.CAPS, Key.U): Key.BACKSPACE,
    Combo(Modifier.CAPS, Key.O): Key.DELETE,
    Combo(Modifier.CAPS, Key.E): Key.ESC,
})
