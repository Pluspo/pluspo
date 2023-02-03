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
      site: 'Pluspo',
      title: '都内スポーツ施設の横断検索サービス',
      reverse: true,
      charset: 'utf-8',
      description: 'Pluspoを使えば「スポーツ・日時・場所」の好きな組み合わせで自由にスポーツ施設を検索できます。',
      keywords: 'スポーツ,スポーツ施設,東京',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@', # Twitterアカウントを書くらしい
        image: image_url('ogp.png')
      }
    }
  end
end
