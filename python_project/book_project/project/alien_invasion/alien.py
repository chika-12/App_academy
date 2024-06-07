from typing import Any
import pygame
from pygame.sprite import Sprite

class Alien(Sprite):
    """An alien class"""

    def __init__(self, ai_game):
        super().__init__()
        self.screen = ai_game.screen
        self.settings = ai_game.settings
        
        self.image = pygame.image.load('images/alien.bmp')
        self.rect = self.image.get_rect()

        """Start the ship at the left top of the screen"""
        self.rect.x = self.rect.width
        self.rect.y = self.rect.height

        """Save position of ship in a decimal variable"""
        self.x = float(self.rect.x)

    def update(self):
        self.x += self.settings.alien_ship_speed

        """update self.rect.x"""
        self.rect.x = self.x
