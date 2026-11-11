/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function validar(f) {
    if (f.nombre.value =="") {
        alert("Debes introducir tu nombre");
        return false;
    }
    return true;
}