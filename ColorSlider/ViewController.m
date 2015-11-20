//
//  ViewController.m
//  ColorSlider
//
//  Created by Angie Chilmaza on 11/20/15.
//  Copyright © 2015 Angie Chilmaza. All rights reserved.
//

#import "ViewController.h"
#import "Color.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UISlider * redSlider;
@property (nonatomic, strong) IBOutlet UISlider * blueSlider;
@property (nonatomic, strong) IBOutlet UISlider * greenSlider;
@property (nonatomic, strong) IBOutlet UISlider * alphaSlider;
@property (strong, nonatomic) IBOutlet UITextField *redValue;
@property (strong, nonatomic) IBOutlet UITextField *greenValue;
@property (strong, nonatomic) IBOutlet UITextField *blueValue;
@property (strong, nonatomic) IBOutlet UITextField *alphaValue;
@property (strong, nonatomic) IBOutlet UITextField *hexValue;
@property (strong, nonatomic) IBOutlet UIView *colorView;
@property (strong, nonatomic) Color * color;


- (IBAction)redSliderChanged:(id)sender;
- (IBAction)greenSliderChanged:(id)sender;
- (IBAction)blueSliderChanged:(id)sender;
- (IBAction)alphaSliderChanged:(id)sender;
- (void)convertToHex;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setupColorFields];

}

-(void)setupColorFields{
    
    self.color = [[Color alloc] init];
    self.redValue.text = [NSString stringWithFormat:@"%f", self.color.red];
    self.greenValue.text = [NSString stringWithFormat:@"%f", self.color.green];
    self.blueValue.text = [NSString stringWithFormat:@"%f", self.color.blue];
    self.alphaValue.text = [NSString stringWithFormat:@"%f", self.color.alpha];

    [self colorFieldsChanged];
    
}

- (IBAction)redSliderChanged:(id)sender {
    
    self.redValue.text = [NSString stringWithFormat:@"%f", self.redSlider.value];
    self.color.red = self.redSlider.value;
    [self colorFieldsChanged];
}

- (IBAction)greenSliderChanged:(id)sender {
    
    self.greenValue.text = [NSString stringWithFormat:@"%f", self.greenSlider.value];
    self.color.green = self.greenSlider.value;
    [self colorFieldsChanged];
}

- (IBAction)blueSliderChanged:(id)sender {
    
    self.blueValue.text = [NSString stringWithFormat:@"%f", self.blueSlider.value];
    self.color.blue = self.blueSlider.value;
    [self colorFieldsChanged];
}

- (IBAction)alphaSliderChanged:(id)sender {
    
    self.alphaValue.text = [NSString stringWithFormat:@"%f", self.alphaSlider.value];
    self.color.alpha = self.alphaSlider.value;
    [self colorFieldsChanged];
    
}

-(void)colorFieldsChanged{
    
    [self setColorView];
    [self convertToHex];
}


-(void)setColorView{
    
    NSLog(@"red=%f  green=%f  blue=%f alpha=%f\n", self.color.red, self.color.green, self.color.blue, self.color.alpha);
    
    self.colorView.backgroundColor = [UIColor colorWithRed:self.color.red/255.0 green:self.color.green/255.0 blue:self.color.blue/255.0 alpha:self.color.alpha];
}

-(void)convertToHex{
    
   NSString * hexString = [NSString stringWithFormat:@"%02X%02X%02X", (unsigned int)self.color.red,
                           (unsigned int)self.color.green, (unsigned int)self.color.blue];
    
   self.hexValue.text = hexString;
    
}



@end
