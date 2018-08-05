function deleteItem(message) {
	var answer = confirm(message);
	if(answer) {
		return true;
	}else {
		return false;
	}
}