const { sql } = require("../config/db");


// Database function to insert new notification  //
const pushNotification = async (req) => {
    var query = `INSERT INTO notifications (notification_name, notification_sender, notification_recipient, recieved_since) values ('${req.notification_name}', ${req.notification_sender}, ${req.notification_recipient}, '${req.recieved_since}')`;
    try {
        let notification = await sql(query);
        return notification;
    } catch (err) {
        console.log(err)
    }
}

// Database function to insert new notification  //
const markAsReadNotification = async (notification_id) => {
    var query = `UPDATE notifications SET markAsRead=1 WHERE notification_id=${notification_id}`;
    try {
        let notification = await sql(query);
        return notification;
    } catch (err) {
        console.log(err)
    }
}

// Database function to retrieve all notifications //
const getnotifications = async () => {
    var query = `Select * from notifications`;
    try {
        let notifications = await sql(query);
        return notifications;
    } catch (err) {
        console.log(err)
    }
}

// Database function to retrieve all notifications //
const getnotificationByRecipient = async (notification_recipient) => {
    var query = `Select * from notifications where notification_recipient='${notification_recipient}'`;
    try {
        let notifications = await sql(query);
        return notifications;
    } catch (err) {
        console.log(err)
    }
}

// Database function to retrieve all notifications //
const getnotificationBySender = async (notification_sender) => {
    var query = `Select * from notifications where notification_sender='${notification_sender}'`;
    try {
        let notifications = await sql(query);
        return notifications;
    } catch (err) {
        console.log(err)
    }
}

// Database function to retrieve last notification  //
const getLastNotification = async () => {
    var query = `SELECT * FROM notifications ORDER BY notification_id DESC LIMIT 1`;
    try {
      let notification = await sql(query);
      return notification;
    } catch(err) {
        console.log(err)
    }
  }


module.exports = {
    pushNotification,
    getnotifications,
    getnotificationByRecipient,
    getnotificationBySender,
    markAsReadNotification,
    getLastNotification,
}