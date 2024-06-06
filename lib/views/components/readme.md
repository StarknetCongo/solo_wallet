# Custom UI Components 

This repository contains a set of custom UI components designed for use in Flutter applications. The components included are:

- `CustomTextField`
- `CustomPinTextField`
- `CustomButton`
- `OutlineCustomButton`

## Components

### CustomTextField

A customizable text field widget designed for general use.

#### Properties

- `hintText` (String?): The hint text displayed inside the text field.
- `labelText` (String?): The label text displayed above the text field.
- `controller` (TextEditingController?): Controls the text being edited.
- `autofocus` (bool): If true, this text field will get focus when the widget is built. Default is false.
- `onSubmited` (Function(String)?): Called when the user submits the input.
- `onChanged` (Function(String)?): Called when the text field's value changes.
- `keybordType` (TextInputType?): The type of keyboard to use for editing the text.
- `maxLength` (int?): The maximum number of characters to allow in the text field.
- `icon` (IconData?): An icon to display at the start of the text field.



### CustomPinTextField

A text field widget specifically designed for PIN input with obscured characters.

#### Properties

- `hintText` (String?): The hint text displayed inside the text field.
- `labelText` (String?): The label text displayed above the text field.
- `controller` (TextEditingController?): Controls the text being edited.
- `keybordType` (TextInputType?): The type of keyboard to use for editing the text.
- `autofocus` (bool): If true, this text field will get focus when the widget is built. Default is false.

### CustomButton

A customizable button widget for various actions.

#### Properties

- `title` (String?): The label text displayed on the button.
- `textColor` (Color?): The color of the text.
- `backgroundColor` (Color?): The background color of the button.
- `onTap` (Function()?): Called when the button is tapped.
- `width` (double?): The width of the button.
- `state` (AppState?): The state of the button (e.g., loading).



### OutlineCustomButton

A customizable outline button widget for various actions, offering a different visual style compared to `CustomButton`.

#### Properties

- `title` (String?): The label text displayed on the button.
- `titleColor` (Color?): The color of the text.
- `backGroundColor` (Color?): The background color of the button.
- `onTap` (Function()?): Called when the button is tapped.
- `width` (double?): The width of the button.
- `state` (AppState?): The state of the button (e.g., loading).



