
// api endpoint to get blog posts
const url = 'http://localhost/php-demo/apis/blog_posts.php';


//  variables that stores the references of html elements in the document (page)
const app = document.querySelector('.app');
const demoBox = document.querySelector('.test-box');
const getDataBtn = document.querySelector('.get-data-btn');


// funtion to retrive the api data and handle all views in frontend
function getBlogPosts() {

    // setting the inner html to loading text when the api response is not yet received (until promise not fulfilles)
    app.innerHTML = `
    <div>Loading...</div>
    `;

    //  fetching the api to get response 
    fetch(url).then(response => response.json()).then(json => {

        // when response completes setting the inner html to show api data title and content
        app.innerHTML = `
            <h1>${json.data[0].Title}</h1>
            <p>${json.data[0].Content}</p>
            `;
    });

}

// when user clicks the btn on the screen then it will hit the api and retrive the data from db
getDataBtn.addEventListener('click', getBlogPosts);

// event which triggers when the docuemnt (pages) finishes loading
window.onload = () => getBlogPosts();
