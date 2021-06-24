rails new tech-ecommerce -d=postgresql -T --skip-coffee

---

rails g model Store address url_address annex:integer status:integer

rails g model Category name status:integer

rails g model Product name unit_price:decimal{7-2} brand 'weight:decimal{5,2}' model category:references

rails g model ProductStore product:references store:references quantity:integer

rails g migration AddParentCategoryToCategory
add_reference :categories, :parent_category, foreign_key: { to_table: :categories }, null: true

rails g model Offer product:references started_at:datetime ended_at:datetime discount:decimal{5-2} status:integer

rails g model User name email phone password_digest token:token status:integer

User.create(email: "john@doe.com", name: "john doe", password: "mysecretpassword", phone: "33344", status: 1)

rails g model Useraddress user:references address

rails g model Order user:references user_address:references total_price:decimal{7-2} paid_at:datetime status:integer

rails g migration AddEmailIndexToUser # this model should have been plural

rails g model OrderProduct order:references product:references quantity:integer unit_price:decimal{7-2} discount:decimal{5-2}

rails g model Invoice user:references order:references user_address:references invoice_number:integer sub_total:decimal{7-2} igv:decimal{5-2} net_total:decimal{7-2} status:integer ruc:integer # TODO: should we have net_total here? can we use something else instead of dependent: :destroy? if not, should user_address be copied here? (for auditions)

---

Controllers without helpers nor assets

rails g controller Stores index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller Offers index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller Categories index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller Products index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller Orders index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller Users index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller UserAddresses index show create update destroy --no-helper --no-assets --no-template-engine

rails g controller Invoices index show create update destroy --no-helper --no-assets --no-template-engine

---

REACT:

npx create-react-app front

setup front

yarn add react-router-doom

---

RAILS:

Add gem

gem 'rack-cors'

bundle install

gem install rack-cors

-----

setup tailwindcss

  if you have problems with CRA with preflight check, create an .env file with
    SKIP_PREFLIGHT_CHECK=true

  install tailwind for dev dependencies (v1 to avoid issues)
    yarn add tailwindcss@^1.9.6 -D

  initialize the configuration 
    npx tailwind init tailwind.config.js -full # creates the tailwind config file with all the available options (around 1000 lines)
    # the config name can also be tailwind.js or whatever you want

  install postcss-cli and autoprefixer (?)
    # for tailwind v1 with create-react-app
    yarn add postcss-cli@^6.1.3 autoprefixer@^9.8.6 -D # what is postcss and autoprefixer for (?)

    # for tailwind 2 with CRA: https://tailwindcss.com/docs/guides/create-react-app#install-tailwind-via-npm # didn't work (postcss not found)
    yarn add -D @tailwindcss/postcss7-compat postcss@^7 autoprefixer@^9

  create postcss file
    touch postcss.config.js

  set this into the postcss.config.js
    const tailwindcss = require('tailwindcss');

    module.exports = {
      plugins: [
        tailwindcss('./tailwind.config.js'), // tailwind config
        require('autoprefixer') // ????
      ] 
    }

  create folder styles and an app.css file and a tailwind.css file

    tailwind.css
      @tailwind base;
      @tailwind components;
      @tailwind utilities;

  import the compiled app.css in the app.js (or the most important ocmponent)
    https://cln.sh/twNRAr
    import './styles/app.css'

  change the default CRA scripts to build css in package.json
    "scripts": {
      "start": "react-scripts start",
      "build": "npm run build:css && react-scripts build",
      "test": "react-scripts test",
      "eject": "react-scripts eject",
      "build:css": "postcss src/styles/tailwind.css -o src/styles/app.css",
      "watch:css": "postcss src/styles/tailwind.css -o src/styles/app.css -w"
    },

  build the app.css
    yarn run build:css

  run the app and test the tailwind classes
    yarn start

-----

configuring/extending tailwindcss
  add an extend property to your tailwind.config.js file at the end of the theme property
  example:
    theme: {
      ...
      extend: {
        height: {
          "5vh": "5vh",
          "10vh": "10vh",
          "15vh": "15vh",
          "20vh": "20vh",
          "25vh": "25vh",
        },
        width: {
          "5vw": "5vw",
          "10vw": "10vw",
          "15vw": "15vw",
          "20vw": "20vw",
          "25vw": "25vw",
        },
      },
    }

  you will probably need to run your script to compile again your css:
    postcss src/styles/tailwind.css -o src/styles/app.css  - OR - yarn run build:css # from your package.json

where to get placeholder images

  https://loremipsum.io/21-of-the-best-placeholder-image-generators/

custom hooks used

  useInterval from https://overreacted.io/making-setinterval-declarative-with-react-hooks/

setup a tailwind plugin

  https://github.com/tailwindlabs/tailwindcss-line-clamp

  install the dependency
    yarn add @tailwindcss/line-clamp

  add the plugin to the configuration file tailwind.config.js
    module.exports = {
      theme: {
        // ...
      },
      plugins: [
        require('@tailwindcss/line-clamp'),
        // ...
      ],
    }

  rebuild your app.css
    yarn run build:css