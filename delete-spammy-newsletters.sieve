if anyof (
    allof (
        header :contains "subject" "newsletter",
        spamtest :value "ge" :comparator "i;ascii-numeric" "5"
    ),
    allof (
        header :contains "subject" "magazine",
        spamtest :value "ge" :comparator "i;ascii-numeric" "5"
    )
) {
  discard;
}
