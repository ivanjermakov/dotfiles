config.load_autoconfig(False)

dark = '#141414'
gray = '#444444'

config.unbind('h')
config.unbind('H')
config.unbind('j')
config.unbind('J')
config.unbind('k')
config.unbind('K')
config.unbind('l')
config.unbind('L')

c.bindings.commands = {
    'normal': {
        'i': ':scroll up',
        'j': ':scroll-page -.5 -.5',
        'k': ':scroll down',
        'l': ':scroll-page .5 .5',
        'I': ':scroll-to-perc 0',
        'K': ':scroll-to-perc',
        'J': ':tab-prev',
        'L': ':tab-next',
        '<Alt-j>': ':back',
        '<Alt-Left>': ':back',
        '<Alt-k>': ':forward',
        '<Alt-Right>': ':forward',
        '!': 'set-cmd-text :open -t -r !',
        ',m': ':spawn mpv {url}',
        ',M': ':hint links spawn mpv {hint-url}'
    }
}

#key bindings
config.bind('0', ':zoom')
config.bind('x', ':tab-close')
config.bind('f', ':hint all current')
config.bind('F', ':hint all tab')
config.bind('<Ctrl+l>', 'set-cmd-text -s :open')

#web pages
#c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = 'dark'
c.colors.webpage.bg = dark
c.zoom.default = 120

#css
#c.content.user_stylesheets = ['~/.config/qutebrowser/css/dark/dark-all-sites.css'] 

#ui
c.fonts.default_size = '16pt'
c.fonts.default_family = 'Cantarell'
c.scrolling.smooth = True
c.url.searchengines = {
    'DEFAULT': 'https://www.google.com.ar/search?q={}',
    '!w': 'https://en.wikipedia.org/wiki/{}',
    '!s': 'https://stackoverflow.com/search?q={}',
}
c.url.start_pages = ['about:blank']
c.url.default_page = 'about:blank'
c.content.notifications.enabled = False
c.tabs.indicator.width = 0
c.tabs.last_close = 'startpage'

#color theme
c.colors.tabs.bar.bg = dark
c.colors.tabs.even.bg = dark
c.colors.tabs.odd.bg = dark
c.colors.tabs.selected.even.bg = gray
c.colors.tabs.selected.odd.bg = gray
