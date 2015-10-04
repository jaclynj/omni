//Saves the service for the user
// by creating a 'Save' association between the user and service
$('.save').click(function (save_event) {
  targetId = save_event.target.id ;
  target = targetId.split('-');
  actionableType = target[0];
  actionableId = target[1];
   $.ajax({
        type: "POST",
        url: '/actions',
        data: { type: "Save",
                actionable_id: actionableId,
                actionable_type: actionableType
              },
        dataType: "JSON",
        success: function(json){
          console.log("success", json);

        }
    });
    return false;
});
$('.saved').click(function (save_event) {
  targetId = save_event.target.id;
  target = targetId.split('-');
  actionableType = target[0];
  actionableId = target[1];
   $.ajax({
        type: "POST",
        url: '/actions',
        data: { type: "Save",
                actionable_id: actionableId,
                actionable_type: actionableType
              },
        dataType: "JSON",
        success: function(json){
          console.log("success", json);
        }
    });
    return false;
});

//User follows professional
// by creating a 'Follow' association between the user and professional
$('.follow').click(function (save_event) {
  targetId = save_event.target.id ;
  target = targetId.split('-');
  actionableType = target[0];
  actionableId = target[1];
   $.ajax({
        type: "POST",
        url: '/actions',
        data: { type: "Follow",
                actionable_id: actionableId,
                actionable_type: actionableType
              },
        dataType: "JSON",
        success: function(json){
          console.log("success", json);

        }
    });
   setTimeout(function() { //TODO remove this HACK
      document.location.reload(true);
    }, 1);
    return false;
});
$('.followed').click(function (save_event) {
  targetId = save_event.target.id;
  target = targetId.split('-');
  actionableType = target[0];
  actionableId = target[1];
   $.ajax({
        type: "POST",
        url: '/actions',
        data: { type: "Follow",
                actionable_id: actionableId,
                actionable_type: actionableType
              },
        dataType: "JSON",
        success: function(json){
          console.log("success", json);
        }
    });
    setTimeout(function() { //TODO remove this HACK
      document.location.reload(true);
    }, 1);
    return false;
});