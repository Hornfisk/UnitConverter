//
//  ViewController.m
//  UnitConverter
//
//  Created by Vlad A on 20/01/2023.
//

//  To do:
//
//  Take the Func 1 template below.
//  Fill in the actual units (min, sec, h, d).
//  Write the three functions that convert from unit to the other(s).
//  Add the code at the top.
//  Wire it in at the right location below.

#import "ViewController.h"

//Func 1 – conv u1 to u2
double convertUnitOneToUnitTwo(double unitOneValue){
    double unitTwoValue;
    
    unitTwoValue = 10* unitOneValue + 2;
    return unitTwoValue;
}

@interface ViewController ()

//Input Field
@property (weak, nonatomic) IBOutlet UITextField *inputField;

//Segment Controller
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

//Label - Click Convert for Result
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
//Calling Func 1
    if(_segmentController.selectedSegmentIndex == 0){
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        [buf appendString: [@(unitTwoValue) stringValue]];
    }
    else if(self.segmentController.selectedSegmentIndex == 1){
        [buf appendString: @"unit three"];
    }
    else{
        [buf appendString: @"unit four"];
        
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
