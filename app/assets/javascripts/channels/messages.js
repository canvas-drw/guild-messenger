App.messages = App.cable.subscriptions.create("MessagesChannel", {
  received: function(data) {
    return document.getElementById('messages')
                   .getElementsByClassName('card-body')[0]
                   .insertAdjacentHTML('beforeend', data['message']);
  }
});
