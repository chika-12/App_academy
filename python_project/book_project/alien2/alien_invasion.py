import sys
import pygame
from settings import Settings
from ship import Ship
class Alien_invasion:
    """The alien class"""
    
    def __init__(self):
        """Initializes pygame"""
        pygame.init()
        self.setting = Settings()

        self.screen = pygame.display.set_mode((self.setting.screen_width, self.setting.screen_height))
        pygame.display.set_caption("Alien Invasion")
        self.ship = Ship(self)

    def run_game(self):
        while True:
            self.check_event()
            self.ship.update()
            self.update_screen()

    def check_event(self):
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
               sys.exit()
            elif event.type == pygame.KEYDOWN:
                self.down_event(event)
            elif event.type == pygame.KEYUP:
                self.up_event(event)
                

    def down_event(self, event):
        if event.key == pygame.K_RIGHT:
            self.ship.moving_right = True
        elif event.key == pygame.K_LEFT:
            self.ship.moving_left = True
        elif event.key == pygame.K_q:
            sys.exit()
    
    def up_event(self, event):
        if event.key == pygame.K_RIGHT:
            self.ship.moving_right = False
        elif event.key == pygame.K_LEFT:
            self.ship.moving_left = False



    def update_screen(self):
        self.screen.fill(self.setting.bg_color)
        # Make the recent drawn screen available
        self.ship.blitme()
        pygame.display.flip()




if __name__ == '__main__':
    ai = Alien_invasion()
    ai.run_game()