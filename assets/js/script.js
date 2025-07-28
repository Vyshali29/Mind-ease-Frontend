function toggleMenu() {
    const navLinks = document.querySelector('.navbar-nav');
    navLinks.classList.toggle('show');
}


// service model1

 // Function to open the modal and display the image
 function openModal(imageSrc) {
    var modal = document.getElementById('imageModal');
    var modalImage = document.getElementById('modalImage');
    modalImage.src = imageSrc;  // Set the source of the image in the modal
    modal.style.display = "flex";  // Show the modal (using flex for centering)
}

// Function to close the modal
function closeModal() {
    var modal = document.getElementById('imageModal');
    modal.style.display = "none";  // Hide the modal
}

// Close the modal if clicked outside the modal content
window.onclick = function(event) {
    var modal = document.getElementById('imageModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


// service model2
function openModal1(modalId, imageSrc) {
    var modal = document.getElementById(modalId);
    var modalImage = document.getElementById('modalImage' + modalId.charAt(modalId.length - 1));
    modalImage.src = imageSrc;  // Set the source of the image in the modal
    modal.style.display = "flex";  // Show the modal (using flex for centering)
}

// Function to close the modal
function closeModal1(modalId) {
    var modal = document.getElementById(modalId);
    modal.style.display = "none";  // Hide the modal
}

// Close the modal if clicked outside the modal content
window.onclick = function(event) {
    var modals = document.querySelectorAll('.modal');
    modals.forEach(function(modal) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    });
}




