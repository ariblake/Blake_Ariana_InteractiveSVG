(() => {
    //try to get the object and do stuff with it
    const seeMoreButtons = document.querySelectorAll('.see-more'),
        popOver = document.querySelector('.popover');

    function buildPopover(dogstats, el) {
        popOver.querySelector(".breed").textContent = dogstats.Breed;
        popOver.querySelector(".size").textContent = dogstats.Size;
        popOver.querySelector(".category").textContent = dogstats.Category;

        //show the popover
        popOver.classList.add('show-popover');
        el.appendChild(popOver);
    }

    //run the fetch API and get the DB data
    function fetchData() {
        let targetEl = this,
            url = `/db_dogbreeds/${this.dataset.target}`;

        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);

            // populate the popover
            buildPopover(data, targetEl);
        })
        .catch((err) => console.log(err));

    }

    //const svgGraphic = document.querySelector(".svg-wrapper");

    // svgGraphic.addEventListener("click", () => {
    //     console.log(this.querySelector('.svg-graphic'));
    // })

    seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));
})();