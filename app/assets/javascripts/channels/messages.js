App.messages = App.cable.subscriptions.create("MessagesChannel", {
  received: function(data) {
    return document.getElementById('messages').insertAdjacentHTML('beforeend', data['message']);
  }
});
