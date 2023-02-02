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
    message: "営業時間\n利用（テニスコート）\n平日：17時から21時\n土日祝：9時から21時\n利用（体育館）\n平日：18時から21時\n土日祝：9時から21時\n受付（通常）\n平日：17時から21時\n土日祝：9時から21時\n受付（プールオープン期間：6月から9月末）\n 平日：13時から21時\n 土日祝：9時から21時\n休館日\n毎月第1月曜日（月曜日が祝日の場合は次の平日）\n年末年始（12月29日から1月3日）\nhttps://www.city.taito.lg.jp/gakushu/sports/sportssisetsuichiran/ryuuhoku/ryuuhokusport.html",
    areas: [
      {
        id: 13,
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
                finished_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                finished_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 14,
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
                finished_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                finished_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :every,
                started_at: '18:00',
                finished_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                finished_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 15,
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
                finished_at: '21:00'
              },
              {
                cycle: :every_saturday,
                started_at: '9:00',
                finished_at: '21:00'
              },
              {
                cycle: :every_sunday,
                started_at: '9:00',
                finished_at: '21:00'
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
    message: "営業時間\n午前9時～午後9時\n休館日\n毎月第1月曜日（月曜日が祝日の場合は次の平日）\n年末年始（12月29日～1月3日）\n第2・4土曜日午前9時から12時30分まで、グラウンドを無料開放しています!\nお問い合わせ\nスポーツ振興課担当\n電話：03-5246-5853\nファクス：03-5246-5814",
    areas: [
      {
        id: 16,
        name: '3階:体育館',
        location: :indoors,
        note: "舞台芸術に関する練習（舞台演出のためのダンス、殺陣等）はできません。\n撮影や営利目的では使用できません。",
        sports: [
          {
            name: '武道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '球技',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 17,
        name: '3階:小体育室',
        location: :indoors,
        note: 'ダンスバーあり',
        sports: [
          {
            name: 'ヨガ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 18,
        name: '1階:小体育室',
        location: :indoors,
        note: '1階小体育室の壁にはボルダリングのホールドが設置されており、ご使用可能です。',
        sports: [
          {
            name: '武道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '健康体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 19,
        name: 'グラウンド',
        location: :outdoors,
        note: 'グラウンドは面積が狭いため大人のサッカーや野球はできません。',
        sports: [
          {
            name: 'テニス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '少年サッカー',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '野球',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      }
    ]
  },
  {
    id: 4,
    name: '町田市立総合体育館',
    city: '町田市',
    address: '南成瀬5-12',
    opened_at: '9:00',
    closed_at: '21:00',
    message: "営業時間 \n午前9時～午後9時\n休館日\n毎月第1・第3月曜日（月曜日が祝日の場合は次の平日）\n年末年始（12月29日～1月3日）\n第2・4土曜日午前9時から12時30分まで、グラウンドを無料開放しています!\nお問い合わせ\nスポーツ振興課担当\n電話：042-724-3440\nファクス：042-724-3441",
    areas: [
      {
        id: 20,
        name: 'メインアリーナ',
        location: :indoors,
        note: "バドミントン、バレーボール、バスケットボール、卓球、などでご利用いただけます。その他器械体操、新体操も利用可能です。また、2階客席の中断にジョギングコースが設けられています。\n撮影や営利目的では使用できません。",
        sports: [
          {
            name: 'バドミントン',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '卓球',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バスケットボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ジョギング',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 21,
        name: 'サブアリーナ',
        location: :indoors,
        note: 'バスケットゴールは1台のみ',
        sports: [
          {
            name: 'バドミントン',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '卓球',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バスケットボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'インディアカ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 22,
        name: '小体育室',
        location: :indoors,
        note: '卓球、各種ダンス、健康体操などでご利用いただけます',
        sports: [
          {
            name: '卓球',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '剣道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '空手',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'なぎなた',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '少林寺拳法',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '太極拳',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '武道・格闘技(その他)',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '社交ダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'エアロビクス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'フォークダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'クラシックバレエ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'モダンバレエ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'スクエアダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '民謡・盆踊り',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '健康体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '親子体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'リズム体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ヨガ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '気功',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 23,
        name: '第一武道場',
        location: :outdoors,
        note: '剣道、空手、各種武道などにご利用いただけます。その他、ダンス、バレエ、踊りや体操などでもご利用いただけます。',
        sports: [
          {
            name: '剣道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '空手',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'なぎなた',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '少林寺拳法',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '太極拳',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '武道・格闘技(その他)',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '社交ダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'エアロビクス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'フォークダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'クラシックバレエ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'モダンバレエ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'スクエアダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '民謡・盆踊り',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '健康体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '親子体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'リズム体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ヨガ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '気功',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 24,
        name: '第二武道場',
        location: :indoors,
        note: "柔道、合気道、各種武道などにご利用いただけます。その他ヨーガ、体操での利用が可能です。",
        sports: [
          {
            name: '空手',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '柔道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '合気道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'なぎなた',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '少林寺拳法',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '太極拳',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '武道・格闘技(その他)',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '健康体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '親子体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ヨガ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '気功',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 25,
        name: '和洋弓道場',
        location: :indoors,
        note: "総合体育館で実施される教室に参加された方には、和弓、アーチェリーともに弓具の貸出もおこなっております（教室終了から半年間）。和洋弓場については、開放もしくは大会でのみの利用となりますのでご了承下さい。\n※アーチェリーの開放は安全管理上、未経験の方は初心者向けの教室または講習会を受講してください。",
        sports: [
          {
            name: '弓道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'アーチェリー',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 26,
        name: 'トレーニングルーム',
        location: :indoors,
        note: "脂肪燃焼に効果的な有酸素運動ができるランニングマシンや、基礎代謝アップ効果のある筋力トレーニングができるマシンやダンベル、その他楽しい運動ができるプログラムやトレーニング器具が揃っております。\n※トレーニングマシン初めてご利用の方は、「ビギナートレーニング」の受講をおすすめしております。トレーニングルーム内、マシンの使い方、運動の仕方、各種プログラムの紹介や利用マナー等をご案内いたします。",
        sports: [
          {
            name: 'トレーニング',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 27,
        name: '第一会議室',
        location: :indoors,
        note: "会議・講習、打ち合わせなどでご利用いただけます。また、第二会議室と併せてご利用いただくことも可能です。\nご利用の際は団体登録が必要です。",
        sports: [
          {
            name: '会議・講習',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 28,
        name: '第二会議室',
        location: :indoors,
        note: "会議・講習、打ち合わせなどでご利用いただけます。また、第一会議室と併せてご利用いただくことも可能です。\nご利用の際は団体登録が必要です。",
        sports: [
          {
            name: '会議・講習',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      }
    ]
  },
  {
    id: 5,
    name: 'サン町田旭体育館',
    city: '町田市',
    address: '旭町3-20-60',
    opened_at: '9:00',
    closed_at: '21:00',
    message: "営業時間\n午前9時～午後9時\n休館日\n毎月第1・第3月曜日（月曜日が祝日の場合は次の平日）\n年末年始（12月28日～1月4日）\n第2・4土曜日午前9時から12時30分まで、グラウンドを無料開放しています!\nお問い合わせ\nスポーツ振興課担当\n電話：042-720-0611",
    areas: [
      {
        id: 29,
        name: 'アリーナ',
        location: :indoors,
        note: "バドミントン、バレーボール、バスケットボール、卓球などでご利用いただけます。その他、剣道や空手、新体操も利用可能です。",
        sports: [
          {
            name: 'バドミントン',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バスケットボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '卓球',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '剣道',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ニュースポーツ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 30,
        name: '多目的室',
        location: :indoors,
        note: '卓球、各種ダンス、健康体操などでご利用いただけます。',
        sports: [
          {
            name: 'エアロビクス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ラテンエアロビクス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '健康体操',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ヨガ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '自重トレーニング',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 31,
        name: 'トレーニング室',
        location: :indoors,
        note: '脂肪燃焼に効果的な有酸素運動ができるランニングマシンや、基礎代謝アップ効果のある筋力トレーニングができるマシンやダンベル、その他楽しく運動ができるプログラムが揃っております。',
        sports: [
          {
            name: 'トレーニング',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 32,
        name: '会議室',
        location: :outdoors,
        note: '会議・講習、打ち合わせなどでご利用いただけます。ご利用の際は団体登録が必要です。',
        sports: [
          {
            name: '会議',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '講習',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '打ち合わせ',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '太極拳',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      }
    ]
  },
  {
    id: 6,
    name: '東京都障害者総合スポーツセンター',
    city: '北区',
    address: '十条台1-2-2',
    opened_at: '9:00',
    closed_at: '21:00',
    message: "営業時間\n午前9時～午後9時00分\n休館日\n毎週水曜日(祝日の場合は翌日)\n祝日の翌日(日曜日の場合は休館しません)\n年末年始（12月29日～1月3日）\nまお、臨時休館する場合がございます。\nお問い合わせ\nスポーツ振興課担当\n電話：03-3907-5631/nファクス：03-3907-5613",
    areas: [
      {
        id: 33,
        name: '本館1階:体育館',
        location: :indoors,
        note: "様々な屋内スポーツにご利用できます。冷暖房設備をはじめ、試合や大会のための電光掲示板や放送設備があります。また、施設備品（用具）の貸出しを行っています。",
        sports: [
          {
            name: 'バドミントン',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バレーボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'バスケットボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ゴールボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ハンドサッカー',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'シッティングバレーボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 34,
        name: '本館1階:プール',
        location: :indoors,
        note: '全長25mで6コース完備されています。水深は1.1m～1.3mで水温は31度前後です。プールサイドは車いすからでも容易に入れるような構造になっています。また、右端の赤い部分のコースは、水深0.7～0.9mと浅くなっているコースもあります。採暖室・異性介護でもご利用できる家族更衣室も設置しています。',
        sports: [
          {
            name: '水泳',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 35,
        name: '本館2階:卓球室・サウンドテーブルテニス室',
        location: :indoors,
        note: '卓球室とサウンドテーブルテニス室を併設しています。卓球台５台、サウンドテーブルテニス用卓球台２台が設置されています。ラケット、ボール等の貸出しも行っています。',
        sports: [
          {
            name: '卓球',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'サウンドテーブルテニス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 36,
        name: '本館2階:宿泊施設',
        location: :indoors,
        note: '洋室6室（2人部屋×5、5人部屋×1）、和室1室（5人部屋×1）、最大で20名まで宿泊可能です。一部トイレ付きの部屋があります。各部屋には、テレビ、冷蔵庫、ポットがあります。また、宿泊者の共有部屋として談話室もご利用いただけます。',
        sports: [
          {
            name: '洋室',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '和室',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: '大浴場',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 37,
        name: '増築棟2階:洋弓場',
        location: :indoors,
        note: '利用するには認定証を取得しての利用となります。初心者からアスリートまで多くの方が共存しやすいよう70mまでのシューティングが可能な射場です。照明も完備しており、夜間（20時20分）まで利用が可能となっております。',
        sports: [
          {
            name: 'アーチェリー',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '20:20'
              }
            ]
          }
        ]
      },
      {
        id: 38,
        name: '増築棟2階:研修室',
        location: :indoors,
        note: 'テレビモニターやDVDビデオデッキ、プロジェクター、スクリーンなどの機器を備えており、最大100人ほどの会議や研修、集会にご利用いただけます。また、2室に仕切ることもできますので、50人ほどの小研修室としてもご利用いただけます。',
        sports: [
          {
            name: '研修室',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 39,
        name: '増築棟1階:多目的室',
        location: :indoors,
        note: 'ゴールボール（１面）・ボッチャコート（３面）等のコートが設置されており、またダンスや体操系等でもご利用が出来ます。冷暖房設備もあり、施設備品（用具）の貸出しを行っています。',
        sports: [
          {
            name: 'ゴールボール',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ボッチャコート',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          },
          {
            name: 'ダンス',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 40,
        name: '増築棟1階:トレーニング室',
        location: :indoors,
        note: 'エアロバイク・ランニングマシーン等の有酸素機器や、上下肢の機器・各種ウエイトトレーニングマシーンが設置されています。また、上下肢のリラクゼーションを促すスリングエクササイズ・車いす利用の方でも有酸素運動が出来るモトメドもご利用出来ます。各障害特性に合わせ、利用しやすいよう工夫がされています。',
        sports: [
          {
            name: 'トレーニング',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 41,
        name: '運動場',
        location: :outdoors,
        note: '全天候型の200mトラックとフィールドの他、砂場（走幅跳び用）、天然芝が完備され、様々な屋外スポーツをお楽しみいただけます。照明も備えており、夜間（20時20分）まで利用可能となっております。また、円周走の用具など各種施設備品（用具）の貸出しを行っております。',
        sports: [
          {
            name: 'トラック',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '20:20'
              }
            ]
          },
          {
            name: 'フィールド',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '20:20'
              }
            ]
          },
          {
            name: '砂場(走り幅跳び)',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '20:20'
              }
            ]
          }
        ]
      },
      {
        id: 42,
        name: '庭球場',
        location: :outdoors,
        note: 'ハードコートが3面完備されています。照明も備えており、夜間（20時20分）まで利用可能となっております。ラケット、ボール等の貸出しも行っています。',
        sports: [
          {
            name: 'テニスコート(ハードコート)',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '20:20'
              }
            ]
          }
        ]
      },
      {
        id: 43,
        name: '集会室',
        location: :indoors,
        note: 'テレビモニターやDVDビデオデッキ、プロジェクター、スクリーンなどの機器を備えており、最大100人ほどの会議や研修、集会にご利用いただけます。また、3室に仕切ることもできますので、30人ほどの小集会室としてもご利用いただけます。',
        sports: [
          {
            name: '集会室',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 44,
        name: '印刷室',
        location: :indoors,
        note: '各種印刷物の作成に必要な、コピー機や紙折り機をご利用いただけます。',
        sports: [
          {
            name: '印刷室',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      },
      {
        id: 45,
        name: '図書コーナー',
        location: :indoors,
        note: 'スポーツ、医学、健康、福祉などの資料を備え、情報提供の場としてご利用いただけます。',
        sports: [
          {
            name: '図書コーナー',
            schedules: [
              {
                cycle: :every,
                started_at: '9:00',
                finished_at: '21:00'
              }
            ]
          }
        ]
      }
    ]
  }
]

places_params.each do |place_params|
  areas_params = place_params.delete(:areas)
  Place.seed(:id, place_params)

  areas_params.each do |area_params|
    sports_params = area_params.delete(:sports)
    area_params[:place_id] = place_params[:id]
    Area.seed(:id, area_params)
    sports_params.each do |sport_params|
      schedules_params = sport_params.delete(:schedules)
      sport = Sport.find_by(name: sport_params[:name]) || Sport.create!(sport_params)
      area_sport = AreaSport.find_or_create_by!(area_id: area_params[:id], sport_id: sport.id)

      schedules_params.each do |schedule_params|
        area_sport.batches.find_or_create_by!(schedule_params)
      end
    end
  end
end
