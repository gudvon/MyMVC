/**
 * Created by Кирилл on 20.03.2016.
 */
$(document).ready(function() {
    $('#email').blur(function() {
        if($(this).val() != '') {
            var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
            if(pattern.test($(this).val())){
                $(this).css({'border' : '1px solid #569b44'});
                $('#valid').text('Right');
            } else {
                $(this).css({'border' : '1px solid #ff0000'});
                $('#valid').text('Wrong');
            }
        } else {
            $(this).css({'border' : '1px solid #ff0000'});
            $('#valid').text('Email field mustn\'t be empty');
        }
    });
    $('#login').blur(function() {
        if($(this).val() != '') {
            // Поле email заполнено (здесь будем писать код валидации)
            var pattern = /^([a-z0-9-])/i;
            if(pattern.test($(this).val())){
                $(this).css({'border' : '1px solid #569b44'});
                $('#valid_log').text('Right');
            } else {
                $(this).css({'border' : '1px solid #ff0000'});
                $('#valid_log').text('Wrong');
            }
        } else {
            $(this).css({'border' : '1px solid #ff0000'});

        }
    });
});