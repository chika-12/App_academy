import sys
import pygame
from settings import Settings
from ship import Ship
from bullet import Bullet

class AlienInvasion():
    """Overall class to manage game"""

    def __init__(self):
        """Initialize the game"""
        pygame.init()
        self.settings = Settings()

        self.screen = pygame.display.set_mode((0, 0), pygame.FULLSCREEN)
        self.settings.screen_width = self.screen.get_rect().width 
        self.settings.screen_height = self.screen.get_rect().height
        pygame.display.set_caption("Alien Invasion")
        self.bullets = pygame.sprite.Group()
        self.ship = Ship(self)


        #set the background color
        #self.bg_color = (230, 230, 230)

    def run_game(self):
        """Starts the main loop"""
        while True:
            self._check_events()
            self.ship.update_movement()
            self.bullets.update()
            self._update_bullet()
            self._check_update()
            #Watch for keyboard and mouse events.
    
    def _update_bullet(self):
        for bullet in self.bullets.copy():
            if bullet.rect.bottom <= 0:
                self.bullets.remove(bullet) 

    def _check_events(self):
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                sys.exit()
            elif event.type == pygame.KEYDOWN:
                #print(event.key)
                self._check_keydown_event(event)               
            elif event.type == pygame.KEYUP:
                self._check_keyup_event(event)
                
    def _check_keydown_event(self, event):
        if event.key == pygame.K_RIGHT:
            #print("Key_up")
            self.ship.moving_right = True
        elif event.key == pygame.K_LEFT:
            self.ship.moving_left = True
        elif event.key == pygame.K_UP:
            self.ship.moving_up = True
        elif event.key == pygame.K_DOWN:
            self.ship.moving_down = True
        elif event.key == pygame.K_SPACE:
            self._fire_bullet()
        elif event.key == pygame.K_q:
            sys.exit()

    def _check_keyup_event(self, event):
        if event.key == pygame.K_RIGHT:
            self.ship.moving_right = False
        elif event.key == pygame.K_LEFT:
            self.ship.moving_left = False
        elif event.key == pygame.K_UP:
            self.ship.moving_up = False
        elif event.key == pygame.K_DOWN:
            self.ship.moving_down = False
    
    def _fire_bullet(self):

        if len(self.bullets) < self.settings.allowed_bullet:
            new_bullet = Bullet(self)
            self.bullets.add(new_bullet)

    def _check_update(self):
                
        #redraw the screen during each pass through the loop
        self.screen.fill(self.settings.bg_color)
        self.ship.blitme()

        #draw the bullet
        for bullet in self.bullets.sprites():
            bullet.draw_bullet()

        #make the most recent drawn screen visible
        pygame.display.flip()

if __name__=="__main__":
    ai = AlienInvasion()
    ai.run_game()