# 一応の規則！
# name: 正式名称で書く
# city: 〇〇区
# address: 〇〇区を除いた住所
# opened_at: 開館時間（窓口受付時間）
# closed_at: 閉館時間
# message: お知らせや予約の注意など

places_params = [
  {
    # NOTE: https://www.taitocity.net/zaidan/riverside/general/
    id: 1,
    name: '台東リバーサイドスポーツセンター',
    city: '台東区',
    address: '今戸1丁目1番10号',
    opened_at: '9:00',
    closed_at: '22:00',
    message: "利用受付(窓口) : 午前9時から午後7時まで(第1月曜日・祝日の月曜日は午後5時まで)\n開館時間 : 午前9時から午後10時まで（午後9時最終入館）月曜日の開館日は午後6時まで(午後5時最終入館)\n休館日:毎週月曜日(第1月曜日及び祝日の月曜日を除く)\n問合せ:台東リバーサイドスポーツセンター 管理事務所\n電話   03-3872-3181\nFAX   03-3872-3184\n施設HP: https://www.taitocity.net/zaidan/riverside/general/",
    areas: [
      {
        id: 1,
        name: '5階:弓道場',
        location: :indoors,
        note: "運動できる服装、室内用の靴が必要です。\n用具等は各自でご持参ください。貸出はありません。\nアーチェリー:中学生以上のご利用で、中学生の方は指導員の許可が必要です。\n弓道:上記の時間から貸切、アーチェリー開放時を除きます。第2、4土曜日午前は小・中学生開放です。",
        sports: [
          {
            name: 'アーチェリー',
            schedules: [
              {
                cycle: :every_wednesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :every_friday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :second_sunday,
                started_at: '12:30',
                finished_at: '15:00'
              },
              {
                cycle: :second_sunday,
                started_at: '15:30',
                finished_at: '18:00'
              }
            ]
          },
          {
            name: '弓道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :every,
                started_at: '12:30',
                finished_at: '15:00'
              },
              {
                cycle: :every,
                started_at: '15:30',
                finished_at: '18:00'
              },
              {
                cycle: :every,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 2,
        name: '地下：エアーライフル場',
        location: :indoors,
        note: "エアーライフル(エアーライフル場)の開放日は管理事務所にお問い合わせください。\n許可書と銃が必要です。\n18歳未満の方は、エアーライフルはご利用になれません。",
        sports: [
          {
            name: 'エアーライフル',
            schedules: [
              {
                cycle: :unknown,
                started_at: '00:00',
                finished_at: '00:00'
              }
            ]
          }
        ]
      },
      {
        id: 3,
        name: '2階:第2武道場',
        location: :indoors,
        note: "運動できる服装、室内用の靴が必要です。\n音楽体操：平成29年5月6日（土）より桜井初美先生を指導員として、再開します。\n実施時間は午前9：45～11：15です。\n初めての方から慣れている方まで楽しめるシンプルな動きのエクササイズです。簡単なラテンダンスやピラティス、ストレッチを行います。",
        sports: [
          {
            name: '音楽体操',
            schedules: [
              {
                cycle: :first_saturday,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :second_saturday,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :third_saturday,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :fourth_saturday,
                started_at: '9:00',
                finished_at: '12:00'
              }
            ]
          },
          {
            name: '空手道',
            schedules: [
              {
                cycle: :every_thursday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          },
          {
            name: '剣道',
            schedules: [
              {
                cycle: :every_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 4,
        name: '3階:第1武道場',
        location: :indoors,
        note: "小・中学生は20:00までとなります。\n用具等は各自でご持参ください。貸出はありません。",
        sports: [
          {
            name: '柔道',
            schedules: [
              {
                cycle: :every_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :every_thursday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 5,
        name: '3階:第2武道場',
        location: :indoors,
        note: '用具等は各自でご持参ください。貸出はありません。',
        sports: [
          {
            name: '太極拳',
            schedules: [
              {
                cycle: :every_wednesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 6,
        name: '少年野球場',
        location: :outdoors,
        note: "小学生のみ。\n道具持参で参加できます。",
        sports: [
          {
            name: '野球',
            schedules: [
              {
                cycle: :every_wednesday,
                started_at: '14:00',
                finished_at: '17:00'
              },
              {
                cycle: :every_friday,
                started_at: '14:00',
                finished_at: '17:00'
              }
            ]
          }
        ]
      },
      {
        id: 7,
        name: '相撲場',
        location: :indoors,
        note: "用具等は各自でご持参ください。貸出はありません。\n平成27���4月11日より土曜日午後は中止となりました。",
        sports: [
          {
            name: '相撲',
            schedules: [
              {
                cycle: :every_sunday,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :every_wednesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 8,
        name: '地下:卓球場',
        location: :indoors,
        note: "用具等は各自でご持参ください。貸出はありません。\n運動できる服装、室内用の靴が必要です。\n第2、4土曜日午前は小・中学生開放です。(下記ご参照)\n開始時間前に整理券を配布します。",
        sports: [
          {
            name: '卓球',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :every,
                started_at: '12:30',
                finished_at: '15:00'
              },
              {
                cycle: :every,
                started_at: '15:30',
                finished_at: '18:00'
              },
              {
                cycle: :every,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 9,
        name: '1階:トレーニング室',
        location: :indoors,
        note: "1日 1~5回\n1回2時間以内250円\n中学生以下の方はご利用できません。\n運動できる服装、室内用の靴が必要です。",
        sports: [
          {
            name: 'トレーニング',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :every,
                started_at: '12:30',
                finished_at: '15:00'
              },
              {
                cycle: :every,
                started_at: '15:30',
                finished_at: '18:00'
              },
              {
                cycle: :every,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 10,
        name: '2階:第2競技場',
        location: :indoors,
        note: "運動できる服装、室内用の靴が必要です。\n用具等は各自でご持参ください。貸出はありません。\nビーチボールの利用券購入は20:30までとなります。",
        sports: [
          {
            name: 'バウンドテニス',
            schedules: [
              {
                cycle: :first_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :third_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          },
          {
            name: 'バドミントン',
            schedules: [
              {
                cycle: :every_tuesday,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :second_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :fourth_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :fifth_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          },
          {
            name: 'ビーチボール',
            schedules: [
              {
                cycle: :every_thursday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 11,
        name: '4階:第1競技場',
        location: :indoors,
        note: "運動できる服装、室内用の靴が必要です。\n用具等は各自でご持参ください。貸出はありません。",
        sports: [
          {
            name: 'バスケットボール',
            schedules: [
              {
                cycle: :every_wednesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          },
          {
            name: 'バドミントン',
            schedules: [
              {
                cycle: :every_wednesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :first_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :third_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :fifth_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :first_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :second_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :third_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              },
              {
                cycle: :fourth_tuesday,
                started_at: '18:30',
                finished_at: '22:00'
              }
            ]
          }
        ]
      },
      {
        id: 12,
        name: '陸上競技場',
        location: :outdoors,
        note: "貸切日以外の開館日に開放。\n運動でき��服装、運動用の靴が必要です。\n第2、4��曜日午前���小・�����学�������開放です��",
        sports: [
          {
            name: '陸上競技',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '12:00'
              },
              {
                cycle: :every,
                started_at: '13:00',
                finished_at: '17:00'
              }
            ]
          }
        ]
      }
    ]
  },
  {
    # NOTE: 営業時間が日によって変わる(https://www.city.taito.lg.jp/gakushu/sports/sportssisetsuichiran/ryuuhoku/ryuuhokusport.html)
    id: 2,
    name: '柳北スポーツプラザ',
    city: '台東区',
    address: '浅草橋5丁目1番8号',
    opened_at: '17:00',
    closed_at: '21:00',
    message: "営業時間\n利用（テニスコート）\n 平日:17時から21時\n 土日祝:9時から21時\n利用（体育館）\n 平日:18時から21時\n 土日祝:9時から21時\n受付（通常）\n 平日:17時から21時\n 土日祝:9時から21時\n受付（プールオープン期間:6月から9月末）\n 平日:13時から21時\n 土日祝:9時から21時\n休館日\n毎月第1月曜日（月曜日が祝日の場合は次の平日）\n年末年始（12月29日から1月3日）\nhttps://www.city.taito.lg.jp/gakushu/sports/sportssisetsuichiran/ryuuhoku/ryuuhokusport.html",
    areas: [
      {
        id: 1,
        name: '4階:プール',
        location: :indoors,
        note: "水着・水泳帽を持参して下さい。(当施設での販売はしておりません)\n延長利用の場合は利用料を清算してください。\n利用対象者(区内在住、在勤及び在学者)\n区内在住・在勤の高齢者・障害者の方は、登録が必要です。運転免許証や各種手帳をお持ちになり、プール営業期間の開館時間に現地受付にてご登録ください。\n温度の事情により開場が見合わせ又は中止になる場合もございます。",
        sports: [
          {
            name: '水泳',
            schedules: [
              {
                cycle: :every,
                started_at: '13:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                closed_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 2,
        name: '1・2階:体育館',
        location: :indoors,
        note: "バスケットボールやバレーボールなど各種スポーツでご利用できます。\n準備や後片付けは利用される方にお願いしております。各種用具も用意しています。\n館内での飲食はご遠慮ください。",
        sports: [
          {
            name: 'バスケットボール',
            schedules: [
              {
                cycle: :every,
                started_at: '18:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                closed_at: '21:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :every,
                started_at: '18:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                closed_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 3,
        name: 'テニスコート',
        location: :outdoors,
        note: "利用の際は、使用承認書を受付に提示し利用してください。\n原則体育用具の準備・後片付けは利用者自身にてお願いします（体育用具を準備・後片付けするための使用時間は、使用時間外であっても認めます）。\n各種用具も用意しています\n雨天の利用可能の確認は柳北スポーツプラザにお問合せください。",
        sports: [
          {
            name: 'テニス',
            schedules: [
              {
                cycle: :every,
                started_at: '17:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                closed_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                closed_at: '21:00'
              }
            ]
          }
        ]
      }
    ]
  },
  {
    id: 3,
    name: 'たなかスポーツプラザ',
    city: '台東区',
    address: '日本堤2丁目25番4号',
    opened_at: '9:00',
    closed_at: '21:00',
    message: "営業時間\n午前9時～午後9時\n休館日\n毎月第1月曜日（月曜日が祝日の場合は次の平日）\n年末年始（12月29日～1月3日）",
    areas: [
      # TODO: データ追加
    ]
  }
]

places_params.each do |place_params|
  areas_params = place_params.delete(:areas)
  Place.seed(place_params)
  place = Place.last

  areas_params.each do |area_params|
    sports_params = area_params.delete(:sports)
    place.areas.seed(area_params)
    area = Area.last

    sports_params.each do |sport_params|
      schedules_params = sport_params.delete(:schedules)
      sport = area.sports.find_or_create_by!(sport_params)
      area_sport = AreaSport.find_by!(area_id: area.id, sport_id: sport.id)

      schedules_params.each do |schedule_params|
        area_sport.batches.find_or_create_by!(schedule_params)
      end
    end
  end
end
