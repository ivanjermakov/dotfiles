config.load_autoconfig(False)

dark = '#111111'
gray = '#333333'
accent = '#88aaff'

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
        'j': ':scroll-page 0 -.5',
        'k': ':scroll down',
        'l': ':scroll-page 0 .5',
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
        ',M': ':hint links spawn mpv {hint-url}',
        ',w': ':set colors.webpage.bg white',
        ',d': ':set colors.webpage.bg #141414',
        'so': ':config-source'
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
c.colors.completion.category.bg = gray
c.colors.completion.even.bg = dark
c.colors.completion.odd.bg = dark
c.colors.completion.match.fg = accent
c.colors.completion.item.selected.bg = gray
c.colors.completion.item.selected.fg = 'white'
c.colors.completion.item.selected.border.top = accent
c.colors.completion.item.selected.border.bottom = accent
c.colors.completion.item.selected.match.fg = accent

config.bind('td', 'config-cycle colors.webpage.bg black white')

