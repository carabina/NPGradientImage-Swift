# NPGradientImage-Swift
UIImage extension which lets you create gradient images. The main purpose of this extension is to add gradient to text of UILabel. You can also use it to add gradient to any components which have UIColor or UIImage properties.
![alt tag](http://i.imgur.com/KMPQdgV.png)
# Usage
        let gradient = UIImage.gradientImage(
            colors: [UIColor.redColor(),  UIColor.greenColor(), UIColor.blueColor(), UIColor.redColor()],
            locations: [0.0, 0.33, 0.66, 1.0],
            size: label.bounds.size,
            horizontal: true
        )
        label.textColor = UIColor(patternImage: gradient)
Please check out the demo project for more examples.
# License
MIT
