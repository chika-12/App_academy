class Settings():
    """A class to store all settings"""

    def __init__(self):
        """Initialize the game settings."""

        """Screen settings"""
        self.screen_width = 1200
        self.screen_height = 620
        self.bg_color = (230, 230, 230)
        self.ship_speed = 1.5

        """Bullet configuration"""
        self.bullet_speed = 1.5
        self.bullet_color = (60, 60, 60)
        self.bullet_width = 3
        self.bullet_height = 15
        self.allowed_bullet = 6

        """Alien ship Settings"""
        self.alien_ship_speed = 1.0
        self.fleet_drop_speed = 10
        """direction of 1 represent right -1 represent left"""
        self.fleet_direction = 1
