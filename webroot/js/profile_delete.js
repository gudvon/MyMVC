/**
 * Created by Кирилл on 20.03.2016.
 */
function confirmDelete(){
    if (confirm("Delete this profile?")){
        location.href="/user/profiles/delete";
        return true;
    } else {
        return false;
    }
}