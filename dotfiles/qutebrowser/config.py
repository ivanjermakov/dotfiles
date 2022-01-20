config.load_autoconfig(False)

#use ijkl instead of hjkl
config.unbind('h')
config.unbind('H')
config.bind('i', ':scroll up')
config.unbind('j')
config.bind('j', ':scroll-page -.5 -.5')
config.bind('J', ':back')
config.unbind('k')
config.bind('k', ':scroll down')
config.unbind('l')
config.unbind('L')
config.bind('l', ':scroll-page .5 .5')
config.bind('L', ':forward')

config.bind('0', ':zoom')

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = 'dark'
c.fonts.default_size = '16pt'
c.scrolling.smooth = True
c.url.searchengines = {'DEFAULT': 'https://www.google.com.ar/search?q={}'}
c.zoom.default = 120
