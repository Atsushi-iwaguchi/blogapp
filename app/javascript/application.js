// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import "trix"
import "@rails/actiontext"

import $ from "jquery"
import axios from 'axios'

document.addEventListener('turbo:load', () => {
    const dataset = $('#article-show').data()
    const articleId = dataset.articleId
    axios.get(`/articles/${articleId}/like`)
        .then((response) => {
            console.log(response);
        })
})