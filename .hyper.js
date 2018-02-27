module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 18,
    fontFamily: '-apple-system, monospace',
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorShape: 'BLOCK',
    cursorBlink: true,
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    css: '',
    termCSS: 'x-row {font-weight: 500;}',
    showHamburgerMenu: false,
    showWindowControls: true,
    padding: '12px',
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },
    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: '',
    copyOnSelect: false
  },
  plugins: [
      'hyper-one-dark',
      'hyper-import-sf-mono'
  ],
  localPlugins: [],
  keymaps: {
  }
};
