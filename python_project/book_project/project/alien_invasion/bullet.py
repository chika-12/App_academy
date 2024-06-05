import pygame
from pygame.sprite import Sprite

"""Creating the bullet class"""
class Bullet(Sprite):
    """Bullet configuration"""

    def __init__(self, ai_game):
        super().__init__()
        self.screen = ai_game.screen
        self.settings = ai_game.settings
        self.color = self.settings.bullet_color

        """Creating the bullet rect and assigning settings to it """
        self.rect = pygame.Rect(0, 0, self.settings.bullet_width, self.settings.bullet_height)

        self.rect.midtop = ai_game.ship.rect.midtop

        """Store bullet position as decimal"""
        self.y = float(self.rect.y)

    def update(self):
        """Assigning bullet speed"""
        self.y -= self.settings.bullet_speed
        """update self.rect"""
        self.rect.y = self.y

    def draw_bullet(self):
        pygame.draw.rect(self.screen, self.color, self.rect)