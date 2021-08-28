import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.log("111111");
        console.log(data); // called when data is broadcast in the cable
        let messageDiv = document.createElement("div");
        messageDiv.innerHTML = data;
        messageDiv = messageDiv.firstChild;
        if (messageDiv.dataset.authorId === messagesContainer.dataset.currentUserId) {
          messageDiv.classList.add("author")
        } else {
          messageDiv.classList.remove("author")
        }
        messagesContainer.appendChild(messageDiv);
        messageDiv.scrollIntoView();
      },
    });
  }
}

export { initChatroomCable };
