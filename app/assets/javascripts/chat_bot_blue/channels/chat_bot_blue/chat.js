function startChat(id) {
  console.log("HEY2! openin chat", id);

  App.chat = App.cable.subscriptions.create(
    {
      channel: "ChatBotBlue::ChatChannel",
      id: id
    },
    {
      connected: function() {
        // Called when the subscription is ready for use on the server
        console.log("Connected!");
      },

      disconnected: function() {
        // Called when the subscription has been terminated by the server
        console.log("Disconnected!");
      },

      received: function(data) {
        // Called when there's incoming data on the websocket for this channel
        console.log("GOT SOME SHIT", data);
        let list = document.querySelector("[data-chat-bot-blue-message-list]");

        list.insertAdjacentHTML("beforeend", data.content);
      }
    }
  );
}
