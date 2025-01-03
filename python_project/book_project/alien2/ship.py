import pygame
class Ship:
    """Initializes the ship object"""

    def __init__(self, game):
        self.screen = game.screen
        self.screen_rect = game.screen.get_rect()
        self.setting = game.setting

        self.image = pygame.image.load('./images/ship.bmp')
        self.rect = self.image.get_rect()
        self.x = float(self.rect.x)
        #Movement flags
        self.moving_right = False
        self.moving_left = False
        self.rect.midbottom = self.screen_rect.midbottom
    def blitme(self):
        self.screen.blit(self.image, self.rect )

    def update(self):
        if self.moving_right and self.rect.right < self.screen_rect.right:
            self.x += self.setting.ship_speed
        elif self.moving_left and self.rect.left > 0:
            self.x -= self.setting.ship_speed
        self.rect.x = self.x