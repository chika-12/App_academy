import pygame
class Ship():
    """Initialize the ship"""

    def __init__(self, ai_game):
        """Initialization"""

        self.screen = ai_game.screen
        self.screen_rect = ai_game.screen.get_rect()
        self.settings = ai_game.settings

        #Load ship image and get its rect
        self.image = pygame.image.load('images/ship.bmp')
        self.rect = self.image.get_rect()

        #Start each new ship at the bottom center of the screen
        self.rect.midbottom = self.screen_rect.midbottom

        """Creating a variable for holding float numbers"""
        self.x = float(self.rect.x)
        self.y = float(self.rect.y)

        """Moving tags"""
        self.moving_right = False
        self.moving_left = False
        self.moving_up = False
        self.moving_down = False
    
    def update_movement(self):
        if self.moving_right:
            if self.moving_right and self.rect.right < self.screen_rect.right:
                self.x += self.settings.ship_speed
        elif self.moving_left:
            if self.moving_left and self.rect.left > 0:
                self.x -= self.settings.ship_speed
        elif self.moving_up:
            if self.moving_up and self.rect.top > 0:
                self.y -= self.settings.ship_speed
        elif self.moving_down:
            if self.moving_down and self.rect.bottom < self.screen_rect.bottom:
                self.y += self.settings.ship_speed
        
        """Update self.rect.x"""
        self.rect.x = self.x
        self.rect.y = self.y

    def blitme(self):
        """Draw the ship at its current location"""
        self.screen.blit(self.image, self.rect)