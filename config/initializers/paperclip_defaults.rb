include ActionView::Helpers::AssetUrlHelper

Paperclip::Attachment.default_options.merge!(
    storage: :fog,
    default_url: '/example_logo.png',
    fog_credentials: {
        aws_access_key_id: ENV['S3_ACCESS_KEY'],
        aws_secret_access_key: ENV['S3_SECRET_KEY'],
        provider: 'AWS',
        region: 'eu-west-1'
    },
    fog_directory: 'michaljaneczek'
)
