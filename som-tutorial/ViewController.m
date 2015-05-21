//
//  ViewController.m
//  som-tutorial
//
//  Created by Paulo Renato Barbosa da Silva on 20/05/15.
//  Copyright (c) 2015 Paulo_Renato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    AVAudioPlayer *musica;
}
- (IBAction)playSound:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"bluesGuitarra" ofType:@"wav"]];
    musica = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playSound:(id)sender {
    
    [musica play];
}
@end
