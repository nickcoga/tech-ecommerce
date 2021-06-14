const tailwindcss = require('tailwindcss');

module.exports = {
  plugins: [
    tailwindcss('./tailwind.config.js'), // tailwind config
    require('autoprefixer') // ????
  ] 
}