/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validation1()
{
    if(document.form2.username.value==="")
    {
        alert("Please Enter Your Name");
        document.form2.username.focus();
        return false;
    }
   else if(document.form2.email.value==="")
    {
        alert("Please Enter Email ");
        document.form2.email.focus();
        return false;
    }
    else if(document.form2.password.value=="")
    {
        alert("Please Enter Password");
        document.form2.password.focus();
        return false;
    }
    else if(document.form2.contact.value=="")
    {
        alert("Please Enter Contact Number");
        document.form2.contact.focus();
        return false;
    }
          
     return true;
     
}

function validation()
{
 if(document.form1.email1.value=="")
 {
     alert("Please Enter Email");
     document.form1.email1.focus();
     return false;
 }
 else if(document.form1.pw.value=="")
 {
     alert("Please Enter Password");
     document.form1.pw.focus();
     return false;
 }
 return true;
}

function profile()
{
    if(document.form2.firstname.value==="")
    {
        alert("Please Enter First Name");
        document.form2.firstname.focus();
        return false;
    }
   else if(document.form2.lastname.value==="")
    {
        alert("Please Enter Last Name ");
        document.form2.lastname.focus();
        return false;
    }
    else if(document.form2.cl.value=="")
    {
        alert("Please Enter Current Location");
        document.form2.cl.focus();
        return false;
    }
    else if(document.form2.city.value=="")
    {
        alert("Please Enter City ");
        document.form2.city.focus();
        return false;
    }
    else if(document.form2.dob.value=="")
    {
        alert("Please Enter Date of Birth ");
        document.form2.dob.focus();
        return false;
    }
    else if(document.form2.mobile.value=="")
    {
        alert("Please Enter Mobile Number ");
        document.form2.mobile.focus();
        return false;
    }
    else if(document.form2.email.value=="")
    {
        alert("Please Enter Email ID ");
        document.form2.email.focus();
        return false;
    }
    else if(document.form2.state.value=="")
    {
        alert("Please Select State Name ");
        document.form2.state.focus();
        return false;
    }
    else if(document.form2.address.value=="")
    {
        alert("Please Enter Permanent Address ");
        document.form2.address.focus();
        return false;
    }
    else if(document.form2.fa.value=="")
    {
        alert("Please Enter Funcational Area ");
        document.form2.fa.focus();
        return false;
    }
    else if(document.form2.role.value=="")
    {
        alert("Please Enter Role/Designation ");
        document.form2.role.focus();
        return false;
    }
          
     return true;
     
}

function showdetail()
{
     
     document.getElementById('first').style.display='Block';
     document.getElementById('sec').style.display='Block';
     document.getElementById('last').style.display='Block';
}
function hidedetail()
{
     document.getElementById('first').style.display='None';
     document.getElementById('sec').style.display='None';
     document.getElementById('last').style.display='None';
    
}