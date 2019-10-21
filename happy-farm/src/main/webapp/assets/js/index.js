var flash=document.getElementById("flash");
var imgs=flash.getElementsByTagName("img");
var li=flash.getElementsByTagName("li");
var c=0;

setInterval(function(){
	c++;
	if(c==3){
		c=0;
	}
	//document.title=c;
	for(var i=0;i<imgs.length;i++){
		imgs[i].style.display="none";
		li[i].style.background="#DDDDDD";
	}
	imgs[c].style.display="block";
	li[c].style.background="#A10000";
},3000)
