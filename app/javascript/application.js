// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import "trix"
import "@rails/actiontext"

import $ from "jquery"
import axios from 'axios'

document.addEventListener('turbo:load', () => {
    $('.article_title').on('click', () => {
        axios.get('/')
            .then((response) => {
                console.log(response);
            })
    })
})