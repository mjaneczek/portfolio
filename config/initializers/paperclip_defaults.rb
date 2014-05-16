Paperclip::Attachment.default_options.merge!(
    storage: :dropbox,
    dropbox_credentials: {
        app_key: ENV['DROPBOX_API_KEY'],
        app_secret: ENV['DROPBOX_API_SECRET'],
        access_token: ENV['DROPBOX_ACCESS_TOKEN'],
        access_token_secret: ENV['DROPBOX_ACCESS_TOKEN_SECRET'],
        user_id: ENV['DROPBOX_USER_ID'],
        access_type: 'app_folder'
    }
)
