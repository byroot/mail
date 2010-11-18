module Mail
  autoload :UnstructuredField, 'mail/fields/unstructured_field'
  autoload :StructuredField, 'mail/fields/structured_field'
  autoload :OptionalField, 'mail/fields/optional_field'

  autoload :BccField, 'mail/fields/bcc_field'
  autoload :CcField, 'mail/fields/cc_field'
  autoload :CommentsField, 'mail/fields/comments_field'
  autoload :ContentDescriptionField, 'mail/fields/content_description_field'
  autoload :ContentDispositionField, 'mail/fields/content_disposition_field'
  autoload :ContentIdField, 'mail/fields/content_id_field'
  autoload :ContentLocationField, 'mail/fields/content_location_field'
  autoload :ContentTransferEncodingField, 'mail/fields/content_transfer_encoding_field'
  autoload :ContentTypeField, 'mail/fields/content_type_field'
  autoload :DateField, 'mail/fields/date_field'
  autoload :FromField, 'mail/fields/from_field'
  autoload :InReplyToField, 'mail/fields/in_reply_to_field'
  autoload :KeywordsField, 'mail/fields/keywords_field'
  autoload :MessageIdField, 'mail/fields/message_id_field'
  autoload :MimeVersionField, 'mail/fields/mime_version_field'
  autoload :PathField, 'mail/fields/path_field'
  autoload :ReceivedField, 'mail/fields/received_field'
  autoload :ReferencesField, 'mail/fields/references_field'
  autoload :ReplyToField, 'mail/fields/reply_to_field'
  autoload :ResentBccField, 'mail/fields/resent_bcc_field'
  autoload :ResentCcField, 'mail/fields/resent_cc_field'
  autoload :ResentDateField, 'mail/fields/resent_date_field'
  autoload :ResentFromField, 'mail/fields/resent_from_field'
  autoload :ResentMessageIdField, 'mail/fields/resent_message_id_field'
  autoload :ResentSenderField, 'mail/fields/resent_sender_field'
  autoload :ResentToField, 'mail/fields/resent_to_field'
  autoload :ReturnPathField, 'mail/fields/return_path_field'
  autoload :SenderField, 'mail/fields/sender_field'
  autoload :SubjectField, 'mail/fields/subject_field'
  autoload :ToField, 'mail/fields/to_field'
end
