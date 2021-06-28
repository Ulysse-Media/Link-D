const express = require('express');
const router = express.Router();
const Actions = require("../database-mysql/actions/actions");
const _DIR = "./server/public";
const { sql } = require("../database-mysql/config/db");

router.post('/', function (req, res, next) {
    var body = JSON.parse(req.body.values);
    if (!req.files) {
        return res.status(400).send("No files were uploaded.");
    }
    var file = req.files.file;
    if (file.mimetype == "image/gif" || file.mimetype == "image/jpeg" || file.mimetype == "image/png") {
        file.mv(`${_DIR}/calendar/${file.name}`);
        var imgURL = `/calendar/${file.name}`;
        body.meeting_agenda = imgURL;
        console.log("route",body);
        Actions.addAction(body).then(result => {
            try {
                return res.json(result);
            } catch (err) {
                console.log(err);
            }
        })
    } else {
        var message = "Please upload your file";
        return res.json({ message })
    }
});

router.get('/', function (req, res, next) {
    Actions.getActions().then(result => {
        try {
            return res.json(result);
        } catch (err) {
            console.log(err)
        }
    })
});

router.get('/last', function (req, res, next) {
    Actions.getLastAction().then(result => {
        try {
            return res.json(result);
        } catch (err) {
            console.log(err)
        }
    })
});

router.get('/:id', function (req, res, next) {
    Actions.getActionById(req.query.action_id).then(result => {
        try {
            return res.json(result);
        } catch (err) {
            console.log(err)
        }
    })
});

router.post('/:id', async function (req, res, next) {
    var body = JSON.parse(req.body.values);
    console.log(body)
    var query = `UPDATE actions SET 
  action_type='${body.action_type}', 
  other_stuff='${body.other_stuff}', 
  start_action='${body.start_action}', 
  end_action='${body.end_action}',
  schedule='${body.schedule}', 
  action_town='${body.action_town}', 
  action_location='${body.action_location}', 
  other_location='${body.other_location}', 
  product='${body.product}', 
  speaker='${body.speaker}', 
  speaker_suggestion='${body.speaker_suggestion}', 
  speaker_transfer='${body.speaker_transfer}', 
  speaker_accommodation='${body.speaker_accommodation}', 
  meeting_agenda='${body.meeting_agenda}', 
  meeting_theme='${body.meeting_theme}', 
  pax_number='${body.pax_number}', 
  action_field='${body.action_field}', 
  invited_doctors='${body.invited_doctors}', 
  other_doctors='${body.other_doctors}', 
  comments='${body.comments}' WHERE action_id='${req.query.action_id}'`;
  if (!req.files) {
    return res.status(400).send("No files were uploaded.");
}
var file = req.files.file;
if (file.mimetype == "image/gif" || file.mimetype == "image/jpeg" || file.mimetype == "image/png") {
    file.mv(`${_DIR}/calendar/${file.name}`);
    var imgURL = `calendar/${file.name}`;
    body.meeting_agenda = imgURL;
} else {
    var message = "Please upload your file";
    return res.json({ message })
}
  try {
    let action = await sql(query);
    return res.json(action);
  } catch (err) {
    console.log(err)
  } 
});

router.delete('/:id', function (req, res, next) {
    Actions.deleteActionById(req.query.action_id).then(result => {
        try {
            return res.json(result);
        } catch (err) {
            console.log(err)
        }
    })
});

module.exports = router;