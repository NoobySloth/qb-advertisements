var persistentNotifs = {};
var colaNotifs=[];
var mostrando=false;


window.addEventListener('message', function (event) {
    if (event.data.persist === undefined) 
    {
        console.log(mostrando)
        if(mostrando===true){
            colaNotifs.push(event.data)
        }else{
            ShowNotif(event.data);
        }
       
    }else{
        ShowNotif(event.data);
    }
});

function CreateNotification(data) {
    var $notification = $(document.createElement('div'));
    $notification.addClass('advertisements').addClass(data.type);
    $notification.html(data.text);
    $notification.fadeIn();
    if (data.style !== undefined) {
        Object.keys(data.style).forEach(function(css) {
            $notification.css(css, data.style[css])
        });
    }

    return $notification;
}

function ShowNotifCola(data){
    var $notification = CreateNotification(data);
        $('.qb-advertisements').append($notification);
        setTimeout(function() {
            
            $.when($notification.fadeOut()).done(function() {
                $notification.remove()
                mostrando = false;
            });
        }, data.length != null ? data.length : 10000);
}

function ShowNotif(data) {
        var $notification = CreateNotification(data);
        mostrando = true;
        $('.qb-advertisements').append($notification);
        setTimeout(function() {
            
            $.when($notification.fadeOut(400)).done(function() {
                $notification.remove()
            });
                for (var paso = 0; paso < colaNotifs.length; paso++) {
                    ShowNotifCola(colaNotifs[paso]);
                        colaNotifs.splice(paso,1);                        
                  };
            
            mostrando=false;
        }, data.length != null ? data.length : 10000); 
}