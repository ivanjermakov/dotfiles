config.load_autoconfig(False)

dark = '#141414'
gray = '#444444'

#use ijkl instead of hjkl
config.unbind('h')
config.unbind('H')
config.bind('i', ':scroll up')
config.bind('I', ':scroll-to-perc 0')
config.unbind('j')
config.unbind('J')
config.bind('j', ':scroll-page -.5 -.5')
config.bind('J', ':tab-prev')
config.bind('<Alt-j>', ':back')
config.bind('<Alt-Left>', ':back')
config.unbind('k')
config.unbind('K')
config.bind('k', ':scroll down')
config.bind('K', ':scroll-to-perc')
config.bind('<Alt-k>', ':forward')
config.bind('<Alt-Right>', ':forward')
config.unbind('l')
config.unbind('L')
config.bind('l', ':scroll-page .5 .5')
config.bind('L', ':tab-next')
config.bind (',m', ':spawn mpv {url}')
config.bind (',M', ':hint links spawn mpv {hint-url}')

#key bindings
config.bind('0', ':zoom')
config.bind('x', ':tab-close')
config.bind('f', ':hint all current')
config.bind('F', ':hint all tab')
config.bind('<Ctrl+l>', 'set-cmd-text -s :open')

#web pages
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = 'dark'
c.colors.webpage.bg = dark
c.zoom.default = 120

#ui
c.fonts.default_size = '16pt'
c.fonts.default_family = 'Cantarell'
c.scrolling.smooth = True
c.url.searchengines = {'DEFAULT': 'https://www.google.com.ar/search?q={}'}
c.url.default_page = 'about:blank'
c.content.notifications.enabled = False

#color theme
c.colors.tabs.bar.bg = dark
c.colors.tabs.even.bg = dark
c.colors.tabs.odd.bg = dark
c.colors.tabs.selected.even.bg = gray
c.colors.tabs.selected.odd.bg = gray
