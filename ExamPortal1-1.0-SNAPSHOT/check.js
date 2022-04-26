/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function fun()
{
    var a=document.createElement('a');
      var link=document.createTextNode('this is link');
      a.appendChild(link);
      a.title="this is link";
      a.href="index.html";
      document.body.appendChild(a);
}

