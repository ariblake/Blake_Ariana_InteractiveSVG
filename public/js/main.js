(() => {
    //try to get the object and do stuff with it
    const seeMoreButtons = document.querySelectorAll('.see-more'),
        popOver = document.querySelector('.info');

    function buildPopover(dogstats, el) {
        popOver.querySelector(".breed").textContent = `${dogstats.ID}. ${dogstats.Breed}`;
        popOver.querySelector(".breedImg").src = `images/${dogstats.Breed = dogstats.Breed.replace(/\s/g,'')}.svg`;
        popOver.querySelector(".size").textContent = dogstats.Size;
        popOver.querySelector(".sizeImg").src = `images/${dogstats.Size = dogstats.Size.replace(/\s/g,'')}.svg`;
        popOver.querySelector(".category").textContent = dogstats.Category;
        popOver.querySelector(".categoryImg").src = `images/${dogstats.Category}.svg`;
        popOver.querySelector(".personality1").textContent = dogstats.Personality1;
        popOver.querySelector(".personality2").textContent = dogstats.Personality2;
        popOver.querySelector(".personality3").textContent = dogstats.Personality3;
        popOver.querySelector(".personalityImg1").src = `images/${dogstats.Personality1}.svg`;
        popOver.querySelector(".personalityImg2").src = `images/${dogstats.Personality2}.svg`;
        popOver.querySelector(".personalityImg3").src = `images/${dogstats.Personality3}.svg`;
        popOver.querySelector(".energy").textContent = dogstats.Energy;
        popOver.querySelector(".energyImg").src = `images/${dogstats.Energy = dogstats.Energy.replace(/\s/g,'')}.svg`;
        popOver.querySelector(".grooming").textContent = dogstats.Grooming;
        popOver.querySelector(".groomingImg").src = `images/${dogstats.Grooming = dogstats.Grooming.replace(/\s/g,'')}.svg`;
        popOver.querySelector(".training").textContent = dogstats.Training;
        popOver.querySelector(".trainingImg").src = `images/${dogstats.Training = dogstats.Training.replace(/\s/g,'')}.svg`;

        //show the popover
        popOver.classList.add('show-popover');
        //el.appendChild(popOver);
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

    seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));
})();