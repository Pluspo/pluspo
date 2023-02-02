module ApplicationHelper
  PHONE_NUMBER_REGEXP = /\+?[ 0-9()-]{9,}[0-9)]/

  def all_auto_link(html, option)
    html = auto_link(html, option)
    html.gsub(PHONE_NUMBER_REGEXP) do |match|
      phone_to(match)
    end.html_safe
  end

  def default_meta_tags
    {
      site: 'サイトネーム',
      title: 'タイトル',
      reverse: true,
      charset: 'utf-8',
      description: 'テキストテキストテキストテキストテキストテキストテキストテキストテキスト',
      keywords: 'キーワード１,キーワード2,キーワード3',
      canonical: request.original_url,
      separator: '|', # これで "タイトル | サイトネーム"ってなる
      icon: [
        { href: image_url('favicon.ico') }#,
        # { href: image_url('top_image.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('logo_no_subtitle.png'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@あなたのツイッターアカウント',
        image: image_url('logo_no_subtitle.png')
      }
    }
  end
end
