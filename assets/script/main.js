
$(document).ready(async function () {

    // Show exam title
    $('#exam-title').text('"' + (await API.getExamTitle()) + '"');

    // Start a new session when we click on "Avvia Esame"
    $('#newSession').click(newSession);

    function newSession() {

        // Prepare environment with some visual effects
        $('.logo').removeClass('col-9').addClass('col-6');
        $('.exam-title').fadeOut();
        $('#login-form').fadeOut();

        // Timer useful to wait the transitions triggered above
        setTimeout(function () {

            // Show the Loading spinner
            $('#loader').fadeIn();

            // Instantiate session
            const session = new Session();

            // Get login datas
            const nome = $('#nome').val();
            const cognome = $('#cognome').val();
            const matricola = $('#matricola').val();

            // Check login
            session.login(nome, cognome, matricola);

        }, 1000);

    }

});
