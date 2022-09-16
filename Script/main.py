from menu import menu, one, two, three, four, five, six, seven, initial_setup, wow_export

choice = menu()
while choice != 'q' and choice != 'Q':
    if choice == 'i' or choice == 'I':
        initial_setup()
    if choice == 'w' or choice == 'W':
        wow_export()
    if choice == '1':
        one()
    if choice == '2':
        two()
    if choice == '3':
        three()
    if choice == '4':
        four()
    if choice == '5':
        five()
    if choice == '6':
        six()
    if choice == '7':
        seven()
    if choice == '8':
        pass
    else:
        choice = menu()

exit()
