//
//  GameController.m
//  SpaceTut
//
//  Created by GABRIEL VIEIRA on 28/04/14.
//  Copyright (c) 2014 ios. All rights reserved.
//

#import "GameController.h"
#import "gameScene.h"
#import "MenuScene.h"

@interface GameController ()

@end

@implementation GameController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btn:(id)sender {
    
    
    SKView *spriteView = (SKView *) self.view;
    // skView.showsFPS = YES;
    // skView.showsNodeCount = YES;
    
    
    // Create and configure the scene.
    //  SKScene * scene = [MenuScene sceneWithSize:];
    SKScene * scene = [gameScene sceneWithSize:spriteView.bounds.size];
    scene.size = spriteView.bounds.size;
    scene.scaleMode = SKSceneScaleModeResizeFill;
    
    // Present the scene.
    [self.skView presentScene:scene];
    
    self.orientation = 0;
}
@end
