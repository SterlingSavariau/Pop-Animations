//
//  ViewController.m
//  Pop Animations
//
//  Created by Sterling on 3/29/15.
//  Copyright (c) 2015 SterlingSavariau. All rights reserved.
//

#import "ViewController.h"
#import <pop/POP.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *loginLogo;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation ViewController

- (IBAction)loginWithFacebookPressed:(id)sender {
    POPBasicAnimation *anim;
    
    if ((anim = [self.loginLogo.layer pop_animationForKey:@"logoSpin"])) return;
    
    POPBasicAnimation *spin = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotation];
    spin.fromValue = @(0);
    spin.toValue = @(2 * M_PI);
    spin.duration = 0.5;
    [self.loginLogo.layer pop_addAnimation:spin forKey:@"logoSpin"];
}


- (IBAction)loginPressed:(id)sender
{
    POPSpringAnimation *anim;
    if ((anim = [self.passwordField.layer pop_animationForKey:@"passwordShake"])) return;
    
    POPSpringAnimation *shake = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    shake.springBounciness = 20;
    shake.velocity = @(3000);
    [self.passwordField.layer pop_addAnimation:shake forKey:@"passwordShake"];
}

@end
