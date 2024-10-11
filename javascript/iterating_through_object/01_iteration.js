let obj = {"name": "Chika", "Number": 23, "School": "Alx"}
for (value in obj){
	console.log(obj[value]);
}

obj.residence = function(name){
	console.log(name);
}
obj.residence = "Abuja"
console.log(obj);
