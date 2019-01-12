WbCopy -sourceProfile='Message'
       -sourceGroup='Local Databases'
       -targetProfile='HIST schema'
       -targetGroup='Default group'
       -targetTable=message
       -columns='guid, msg_text, handle_id, subject, attributed_body, version, msg_type, service, account, account_guid, msg_error, msg_date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, sr_ck_sync_state, sr_ck_record_id, sr_ck_record_change_tag'
       -ignoreIdentityColumns=false
       -mode=update,insert
       -keyColumns=guid
       -deleteTarget=false
       -continueOnError=false
       -preTableStatement="SET time_zone='+00:00'"
       -sourceQuery=
SELECT
  guid
  ,text msg_text
  ,handle_id
  ,subject
  ,attributedBody attributed_body
  ,version
  ,type msg_type
  ,service
  ,account
  ,account_guid
  ,error msg_error
  ,CASE date WHEN 0 THEN NULL ELSE DATETIME('2001-01-01', '+' || (date / 1000000000) || ' seconds') END msg_date
  ,CASE date_read WHEN 0 THEN NULL ELSE DATETIME('2001-01-01', '+' || (date_read / 1000000000) || ' seconds') END  date_read
  ,CASE date_delivered WHEN 0 THEN NULL ELSE DATETIME('2001-01-01', '+' || (date_delivered / 1000000000) || ' seconds') END date_delivered
  ,is_delivered
  ,is_finished
  ,is_emote
  ,is_from_me
  ,is_empty
  ,is_delayed
  ,is_auto_reply
  ,is_prepared
  ,is_read
  ,is_system_message
  ,is_sent
  ,has_dd_results
  ,is_service_message
  ,is_forward
  ,was_downgraded
  ,is_archive
  ,cache_has_attachments
  ,cache_roomnames
  ,was_data_detected
  ,was_deduplicated
  ,is_audio_message
  ,is_played
  ,CASE date_played WHEN 0 THEN NULL ELSE DATETIME('2001-01-01', '+' || (date_played / 1000000000) || ' seconds') END date_played
  ,item_type
  ,other_handle
  ,group_title
  ,group_action_type
  ,share_status
  ,share_direction
  ,is_expirable
  ,expire_state
  ,message_action_type
  ,message_source
  ,associated_message_guid
  ,associated_message_type
  ,balloon_bundle_id
  ,payload_data
  ,expressive_send_style_id
  ,associated_message_range_location
  ,associated_message_range_length
  ,message_summary_info
  ,ck_sync_state
  ,ck_record_id
  ,ck_record_change_tag
  ,destination_caller_id
  ,sr_ck_sync_state
  ,sr_ck_record_id
  ,sr_ck_record_change_tag
FROM message 
ORDER BY date DESC;
