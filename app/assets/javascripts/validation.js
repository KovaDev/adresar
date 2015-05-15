$(document).ready(function(){

    var loginForm = $('#new_user');
    var userEditForm = $('#user-edit-form');
    var legalEntityForm = $('.legal-entity-form');
    var physicalEntityForm = $('.physical-entity-form');

    // login form
    $(function(){

        loginForm.find('input').tooltipster({
            trigger: 'custom',
            onlyOne: false,
            position: 'top',
            theme: 'tooltipster-punk'
        });

        loginForm.validate({
            rules: {
                username: {
                    required: true,
                    minlength: 3,
                    maxlength: 20
                },
                password: {
                    required: true
                }
            },
            messages: {
                username: {
                    required: "Polje je obavezno!",
                    minlength: "Korisničko ime mora biti duže od 3 karaktera!",
                    maxlength: "Korisničko ime može biti maksimum 20 karaktera!"
                },
                password: {
                    required: "Polje je obavezno!"
                }
            },
            errorPlacement: function(error, element){
                var lastError = $(element).data('lastError'),
                    newError = $(error).text();

                $(element).data('lastError', newError);

                if(newError !== '' && newError !== lastError){
                    $(element).tooltipster('content', newError);
                    $(element).tooltipster('show');
                }
            },
            success: function (label, element) {
                $(element).tooltipster('hide');
            }

        });
    });

    // registration form
    $(function(){

        $('#register-form input').tooltipster({
            trigger: 'custom',
            onlyOne: false,
            position: 'top',
            theme: 'tooltipster-punk'
        });

        $("#register-form").validate({
            rules: {
                username: {
                    required: true,
                    minlength: 3,
                    maxlength: 20
                },
                first_name: {
                    required: true
                },
                last_name: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true
                },
                password_again: {
                    required: true,
                    equalTo: "#password"
                }
            },
            messages: {
                username: {
                    required: "Polje je obavezno!",
                    minlength: "Korisničko ime mora biti duže od 3 karaktera!",
                    maxlength: "Korisničko ime može biti maksimum 20 karaktera!"
                },
                first_name: {
                    required: "Polje je obavezno!"
                },
                last_name: {
                    required: "Polje je obavezno!"
                },
                email: {
                    required: "Polje je obavezno!",
                    email: "Niste unijeli ispravan e-mail!"
                },
                password: {
                    required: "Polje je obavezno!"
                },
                password_again: {
                    required: "Polje je obavezno!",
                    equalTo: "Lozinke se ne poklapaju!"
                }
            },
            errorPlacement: function(error, element){
                var lastError = $(element).data('lastError'),
                    newError = $(error).text();

                $(element).data('lastError', newError);

                if(newError !== '' && newError !== lastError){
                    $(element).tooltipster('content', newError);
                    $(element).tooltipster('show');
                }
            },
            success: function (label, element) {
                $(element).tooltipster('hide');
            }

        });
    });

    // edit user form
    $(function(){

        userEditForm.find('input').tooltipster({
            trigger: 'custom',
            onlyOne: false,
            position: 'top',
            theme: 'tooltipster-punk'
        });

        userEditForm.validate({
            rules: {
                username: {
                    required: true,
                    minlength: 3,
                    maxlength: 20
                },
                first_name: {
                    required: true
                },
                last_name: {
                    required: true
                },
                email: {
                    email: true
                }
            },
            messages: {
                username: {
                    required: "Polje ne smije biti prazno!",
                    minlength: "Korisničko ime mora biti duže od 3 karaktera!",
                    maxlength: "Korisničko ime može biti maksimum 20 karaktera!"
                },
                first_name: {
                    required: "Polje ne smije biti prazno!"
                },
                last_name: {
                    required: "Polje ne smije biti prazno!"
                },
                email: {
                    email: "Unijeli ste neispravan e-mail!"
                }
            },
            errorPlacement: function(error, element){
                var lastError = $(element).data('lastError'),
                    newError = $(error).text();

                $(element).data('lastError', newError);

                if(newError !== '' && newError !== lastError){
                    $(element).tooltipster('content', newError);
                    $(element).tooltipster('show');
                }
            },
            success: function (label, element) {
                $(element).tooltipster('hide');
            }

        });
    });

    $(function(){

        $('#user-password-form input').tooltipster({
            trigger: 'custom',
            onlyOne: false,
            position: 'top',
            theme: 'tooltipster-punk'
        });

        $("#user-password-form").validate({
            rules: {
                password: {
                    required: true
                },
                password_again: {
                    required: true
                }
            },
            messages: {
                password: {
                    required: "Polje ne smije biti prazno!"
                },
                password_again: {
                    required: "Polje ne smije biti prazno!"
                }
            },
            errorPlacement: function(error, element){
                var lastError = $(element).data('lastError'),
                    newError = $(error).text();

                $(element).data('lastError', newError);

                if(newError !== '' && newError !== lastError){
                    $(element).tooltipster('content', newError);
                    $(element).tooltipster('show');
                }
            },
            success: function (label, element) {
                $(element).tooltipster('hide');
            }

        });
    });

    // legal entity form
    $(function(){

        legalEntityForm.find('input').tooltipster({
            trigger: 'custom',
            onlyOne: false,
            position: 'top',
            theme: 'tooltipster-punk'
        });

        legalEntityForm.validate({
            rules: {
                name: {
                    required: true,
                    minlength: 3
                },
                owner: {
                    required: true
                },
                country: {
                    required: true
                },
                city: {
                    required: true
                },
                postal_code: {
                    required: true
                },
                address: {
                    required: true,
                    email: true
                }
            },
            messages: {
                name: {
                    required: "Polje je obavezno!",
                    minlength: "Korisničko ime mora biti duže od 3 karaktera!"
                },
                owner: {
                    required: "Polje je obavezno!"
                },
                country: {
                    required: "Polje je obavezno!"
                },
                city: {
                    required: "Polje je obavezno!"
                },
                postal_code: {
                    required: "Polje je obavezno!"
                },
                address: {
                    required: "Polje je obavezno!",
                    email: "Niste unijeli ispravan e-mail!"
                }
            },
            errorPlacement: function(error, element){
                var lastError = $(element).data('lastError'),
                    newError = $(error).text();

                $(element).data('lastError', newError);

                if(newError !== '' && newError !== lastError){
                    $(element).tooltipster('content', newError);
                    $(element).tooltipster('show');
                }
            },
            success: function (label, element) {
                $(element).tooltipster('hide');
            }

        });
    });

    // physical entity form
    $(function(){

        physicalEntityForm.find('input').tooltipster({
            trigger: 'custom',
            onlyOne: false,
            position: 'top',
            theme: 'tooltipster-punk'
        });

        physicalEntityForm.validate({
            rules: {
                first_name: {
                    required: true
                },
                last_name: {
                    required: true
                },
                country: {
                    required: true
                },
                city: {
                    required: true
                },
                postal_code: {
                    required: true
                },
                address: {
                    required: true,
                    email: true
                }
            },
            messages: {
                first_name: {
                    required: "Polje je obavezno!"
                },
                last_name: {
                    required: "Polje je obavezno!"
                },
                country: {
                    required: "Polje je obavezno!"
                },
                city: {
                    required: "Polje je obavezno!"
                },
                postal_code: {
                    required: "Polje je obavezno!"
                },
                address: {
                    required: "Polje je obavezno!",
                    email: "Niste unijeli ispravan e-mail!"
                }
            },
            errorPlacement: function(error, element){
                var lastError = $(element).data('lastError'),
                    newError = $(error).text();

                $(element).data('lastError', newError);

                if(newError !== '' && newError !== lastError){
                    $(element).tooltipster('content', newError);
                    $(element).tooltipster('show');
                }
            },
            success: function (label, element) {
                $(element).tooltipster('hide');
            }

        });
    });


});
