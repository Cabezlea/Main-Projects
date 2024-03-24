import pygame
from pygame import *

pygame.init()

screen = pygame.display.set_mode((800, 400))

#Load Images

#Bat
bat = pygame.image.load('/Users/user/Dropbox/Mac/Desktop/CS Languages /Python/Breaking Bricks/Images/paddle.png')
bat = bat.convert_alpha()
bat_rect = bat.get_rect()
bat_rect [1] = screen.get_height() - 100

#Ball
ball = pygame.image.load('/Users/user/Dropbox/Mac/Desktop/CS Languages /Python/Breaking Bricks/Images/football.png')
ball = ball.convert_alpha()
ball_rect = ball.get_rect()
ball_start = (200, 200)
ball_speed = (3.0, 3.0)
ball_served = False
speedx, speedy = ball_speed
ball_rect.topleft = ball_start

#Brick
brick = pygame.image.load('/Users/user/Dropbox/Mac/Desktop/CS Languages /Python/Breaking Bricks/Images/brick.png')
brick = brick.convert_alpha()
brick_rect = brick.get_rect()
bricks = []
bricks_rows = 5
brick_gap = 10
#bricks_cols = 3
bricks_cols = screen.get_width() // (brick_rect [2] + brick_gap)
side_gap = (screen.get_width() - (brick_rect [2] + brick_gap) * bricks_cols) // 2

#Place the bricks and calculate how many we need
for y in range(bricks_rows):
    brickY = y * (brick_rect [3] + 5)
    for x in range(bricks_cols):
        brickX = x * (brick_rect [2] +5) + side_gap
        bricks.append((brickX, brickY))

pygame.display.set_caption("Breakin' Bricks")

clock = pygame.time.Clock()

game_over = False
x = 0

#Main Game Loop
while not game_over:
    dt = clock.tick(50)
    screen.fill((0, 0, 0))

    for b in bricks:
        screen.blit(brick, b)

        #Check for collision between the ball and brick
        if ball_rect.colliderect(Rect(b[0], b[1], brick_rect.width, brick_rect.height)):
            bricks.remove(b)

            #Ball bounces back when hitting the bricks
            if ball_rect.left < b[0] or ball_rect.right > b[0] + brick_rect.width:
                speedx = -speedx  # Reverse it horizontally
            else:
                speedy = -speedy  # Reverse it vertically

    #Show items on the screen
    screen.blit(bat, bat_rect)
    screen.blit(ball, ball_rect)

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            game_over = True

    #Move the bat
    pressed =pygame.key.get_pressed()
    if pressed[K_LEFT]:
        x = x - (0.5 * dt)

    if pressed[K_RIGHT]:
        x = x + (0.5 * dt)

    if pressed[K_SPACE]:
        ball_served = True

    #Detecting when ball hits the bat
    if bat_rect [0] + bat_rect.width >= ball_rect[0] >= bat_rect [0] and \
        ball_rect [1] + ball_rect.height >= bat_rect[1] and \
        speedy > 0:
            speedy = speedy * -1
            continue

    #Keep the ball within the screen edges

    #Top
    if ball_rect [1] <= 0:
        ball_rect [1] = 0
        speedy = speedy * -1

    #Bottom
    if ball_rect [1] >= screen.get_height() - ball_rect.height:
        #ball_rect [1] = screen.get_height() - ball_rect.height
        #speedy = speedy * -1
        ball_served = False
        ball_rect.topleft = ball_start

    #Left
    if ball_rect [0] <= 0:
        ball_rect [0] = 0
        speedx = speedx * -1

    #Right
    if ball_rect[0] >= screen.get_width() - ball_rect.width:
        ball_rect[0] = screen.get_width() - ball_rect.width
        speedx = speedx * -1

    bat_rect [0] = x

    #Move the ball
    if ball_served == True:

        ball_rect [0] = ball_rect [0] + speedx
        ball_rect [1] = ball_rect [1] + speedy


    pygame.display.update()

pygame.quit()