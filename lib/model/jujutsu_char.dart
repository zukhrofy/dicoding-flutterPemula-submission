enum Gender { male, female }

enum Grade {
  specialGrade,
  grade1,
  semiGrade1,
  grade2,
  grade3,
}

extension GenderExtension on Gender {
  String get value {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
    }
  }
}

extension GradeExtension on Grade {
  String get value {
    switch (this) {
      case Grade.specialGrade:
        return 'Special Grade';
      case Grade.grade1:
        return 'Grade 1';
      case Grade.semiGrade1:
        return 'Semi Grade 1';
      case Grade.grade2:
        return 'Grade 2';
      case Grade.grade3:
        return 'Grade 3';
    }
  }
}

class JujutsuCharacter {
  String kenji;
  String name;
  String species;
  String birthday;
  Gender gender;
  Grade? grade;
  String description;
  String profileImage;
  String appearance;
  List<Map<String, String>> appearanceImages;

  JujutsuCharacter({
    required this.kenji,
    required this.name,
    required this.species,
    required this.birthday,
    required this.gender,
    this.grade,
    required this.description,
    required this.profileImage,
    required this.appearance,
    required this.appearanceImages,
  });
}

var jujutsuCharList = [
  JujutsuCharacter(
      kenji: '東堂葵',
      name: 'Aoi Todo',
      species: 'human',
      birthday: 'September 23, 2000',
      gender: Gender.male,
      grade: Grade.grade1,
      description:
          'Aoi Todo (東堂葵 Tōdō Aoi?) is a supporting character in the Jujutsu Kaisen series. He is a third-year student at Kyoto Jujutsu High School and a grade 1 jujutsu sorcerer. He was mentored by Yuki Tsukumo in his youth and considers Yuji Itadori his best friend.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/7/79/Aoi_Todo_%28Anime%29.png/revision/latest?cb=20201025155959.webp',
      appearance:
          'Aoi Todo is a tall young man who stands about the same height as Satoru Gojo[3]. He has a very defined, heavy muscular build and relatively tan skin. He has small black eyes and shoulder-length black hair that is almost always tied into a top-knot bun with unusual flyaway strands with rounded ends akin to multiple stamens of a flower, befitting the meaning of his name. One of his most notable features is the large scar running down the left side of Todo\'s face that he got from harsh training with Yuki. While Todo sports his jujutsu high uniform, he usually takes his jacket off and rips the undershirt before or during the battle. He usually dons martial arts pants and slippers. Todo\'s choice of pants is very loose and stops above the ankle with a bright blue sash wrapped around the waist. He wore a tennis-type of outfit while playing ping-pong with Mei Mei, sporting a collared shirt and shorts rather than his normal outfit. In his fantasy of attending junior high with Yuji Itadori and Takada, Todo wears a school uniform that consists of a black jacket similar to his Jujutsu High one. Like with all his jackets, Todo left it open to reveal the undershirt. Even in these forged memories, Aoi wears his blue sash with his pants. During the Shibuya Incident, Todo had to sever his left hand to avoid being fully transfigured by Mahito.',
      appearanceImages: [
        {
          'image': 'images/Aoi_Todo_as_a_kid_(Anime).webp',
          'title': 'Aoi Todo as a child'
        },
        {
          'image': 'images/Aoi_Todo.webp',
          'title': 'Aoi\'s self-image in his memories with Yuji.'
        }
      ]),
  JujutsuCharacter(
      kenji: '七海建人',
      name: 'Kento Nanami',
      species: 'human',
      birthday: 'July 3, 1990',
      gender: Gender.male,
      grade: Grade.grade1,
      description:
          'Kento Nanami (七海建人 Nanami Kento?) is a major supporting character in Jujutsu Kaisen. He was a former student of Tokyo Jujutsu High where he was an underclassman of Satoru Gojo and Suguru Geto. Nanami initially left Jujutsu High after graduating to become a salaryman, but returned four years later to continue working as a jujutsu sorcerer. While working as a Jujutsu High sorcerer, Nanami was ranked grade 1 and operated primarily out of the Tokyo campus. With Satoru\'s introduction, he also became a close mentor to Yuji Itadori.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/b/b0/Kento_Nanami_%28Anime%29.png/revision/latest?cb=20201025155221.webp',
      appearance:
          'Nanami is a tall, well-built man with blonde hair styled with a neat part. Nanami has very thin eyebrows as well as small eyes that are usually covered by his signature sunglasses, which don\'t have arms that wrap around the ears. Befitting a former office worker, Nanami is usually fully dressed in a business suit. His usual suit consists of a blue dress shirt underneath a tan blazer with matching slacks and light shoes. Attached to his dress shirt, there is a holster that sheaths Nanami\'s blunt sword, hidden by the back of his blazer. He also sports a necktie that shares the same dotted pattern as the bandages around his blunt sword.After graduating from Jujutsu High and working for corporate, Nanami wore a vertical striped jacket over a white button-down shirt and dark-colored tie with white dots all over it, vertical striped pants, and black shoes. As a student, Nanami wore a normal Jujutsu High uniform. His hair was styled slightly differently when he was younger.',
      appearanceImages: [
        {
          'image': 'images/Kento_Nanami_young_(Anime).webp',
          'title': 'Nanami as a Jujutsu High student in 2006.'
        },
        {
          'image': 'images/Kento_Nanami_(Chapter_100).webp',
          'title': 'Nanami in the manga. (Gray)'
        }
      ]),
  JujutsuCharacter(
      kenji: '夏油傑',
      name: 'Suguru Geto',
      species: 'human',
      birthday: 'February 3, 1990',
      gender: Gender.male,
      grade: Grade.specialGrade,
      description:
          'Suguru Geto (夏油傑 Getō Suguru?) is an antagonist in both the Jujutsu Kaisen series and its prequel Jujutsu Kaisen 0: Jujutsu High. He was originally a student of Masamichi Yaga\'s alongside Satoru Gojo and Shoko Ieiri at Tokyo Jujutsu High. His experiences as a jujutsu sorcerer bred a deep hatred for non-sorcerers, leading to an incident where Suguru massacred over a hundred civilians in a single night. He was expelled from Jujutsu High and came to be known as the worst of all curse users.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/c/c2/Suguru_Geto_%28Prequel_Anime%29.png/revision/latest?cb=20211104034641.webp',
      appearance:
          'Suguru is a tall, slim man with long black hair partially tied up behind his head while the rest drapes down his back. He has small black eyes and bangs that occasionally cover the left eye. His earlobes are large enough to fit fairly large circular earrings. In 2006, Suguru\'s hair was much shorter as a student. Most of it tied up but his bangs were still as prominent. After August 2007 when Suguru became a curse user, his hair began to grow longer and reflect the length it is in 2017. As a student, Suguru wore a normal jujutsu high uniform. While masquerading himself under the facade of a Buddhist priest, Suguru dons the appropriate attire. He sports a gold-colored kāṣāya garment over black yukata robes. His monk attire is completed with white tabi socks and zōri sandals. ',
      appearanceImages: [
        {
          'image': 'images/Suguru_Geto_young_(Anime).webp',
          'title': 'Suguru during his time as a Jujutsu High student.'
        },
        {
          'image': 'images/Suguru_donning_his_priest_outfit.webp',
          'title': 'Suguru Geto in his Buddhist robes.'
        }
      ]),
  JujutsuCharacter(
      kenji: '虎杖悠仁',
      name: 'Yuji Itadori',
      species: 'human',
      birthday: 'March 20, 2003',
      gender: Gender.male,
      grade: Grade.semiGrade1,
      description:
          'Yuji Itadori (虎杖悠仁 Itadori Yūji?) is the main protagonist of the Jujutsu Kaisen series. He is the son of Jin Itadori and Kaori Itadori. Yuji is the grandson of Wasuke Itadori who was living a normal life until he encountered Megumi and ate one of Sukuna\'s fingers. After becoming Sukuna\'s vessel, Yuji began attending Tokyo Jujutsu High alongside Megumi and Nobara as first-year students.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/6/6f/Yuji_Itadori_%28Anime_2%29.png/revision/latest?cb=20200908071838.webp',
      appearance:
          'Yuji is a young man of average height and appears to have a slender build when wearing baggy clothing, but actually has a lean and muscular physique. He also has relatively large light brown eyes and spiky pink hair (brownish blonde in the manga) that\'s styled in an undercut fashion. When becoming the vessel for Sukuna after eating his finger, he gains a second pair of eyes that only open when Sukuna controls his body along with his many markings. At the start of the series, Yuji wore a light-colored hooded jacket, high-cuffed black pants, and white shoes. However, in the anime, his pants were denim, and his shoes were bright red. When Yuji enrolled into the Tokyo Metropolitan Curse Technical College, he began wearing his version of the uniform; a black long sleeve shirt resembling a gakuran over a red hoodie, black pants, and red shoes. He gains a noticeable scar between his two eyes and a smaller scar on his left labial commissure of the mouth during the Shibuya Incident. Both scars were caused by Mahito; the first one was inflicted when the cursed spirit surprise-attacked him with a blade on his fist,[3] and the second one was inflicted when Yuji battled him after his transformation.[4]He lost the second pair of eyes that only open when Sukuna controls his body along with his many markings after the latter transferred to Megumi Fushiguro as his new vessel',
      appearanceImages: [
        {
          'image': "images/Yuji_Itadori_(Volume_1).webp",
          'title': 'Yuji\'s initial appearance in the manga.'
        },
        {
          'image': 'images/Yuji_Itadori_(Fanbook).webp',
          'title': 'Yuji\'s appearance after the Shibuya Incident.'
        }
      ]),
  JujutsuCharacter(
      kenji: '伏黒恵',
      name: 'Megumi Fushiguro',
      species: 'human',
      birthday: 'December 22, 2002',
      gender: Gender.male,
      grade: Grade.semiGrade1,
      description:
          'Megumi Fushiguro (伏黒恵 Fushiguro Megumi?) is the deuteragonist of the Jujutsu Kaisen series. He is a grade 2 jujutsu sorcerer and first-year student at Tokyo Jujutsu High alongside Yuji Itadori and Nobara Kugisaki. Megumi is the step-brother of Tsumiki Fushiguro and as the son of Toji Fushiguro, Megumi is also a descendant of the Zenin Family. Megumi was born outside the clan as Toji\'s trump card and was eventually found by Satoru Gojo, who mentored him and enrolled him at Jujutsu High as his student.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/d/dd/Megumi_Fushiguro_%28Anime_2%29.png/revision/latest?cb=20201025012501.webp',
      appearance:
          'Megumi is a relatively tall, slim young man with fair skin and green eyes (dark blue in the anime adaptation). He has uniquely styled black hair with long spikes that jut out in every direction around his head, resembling a sea-urchin (according to Hakari). Megumi typically wears a standard Jujutsu High uniform with a dark blue jacket over a long-sleeved white dress shirt. His uniform pants match his jacket and only reach to just above his shins. He wears long black socks that cover his exposed ankles and finishes his outfit with low-top brown shoes. He also has a blue tracksuit for training. In middle school, Megumi wore the Saitama Urami East Junior High uniform, which consisted of a tan jacket over a white dress shirt with black pants and white sneakers. While sneaking inside the Gachinko Fight Club, Megumi wore a black hoodie and matching pants with his normal shoes as a disguise.',
      appearanceImages: [
        {
          'image': "images/Megumi_as_a_kid.webp",
          'title': 'Megumi in first grade.'
        },
        {
          'image': 'images/Megumi_Fushiguro_Junior_High_uniform.webp',
          'title': 'Megumi in middle school.'
        },
        {
          'image': 'images/Megumi_Fushiguro_(Chapter_144).webp',
          'title': 'Megumi in his Jujutsu High uniform (gray).'
        },
        {'image': 'images/Megumi_polearm.webp', 'title': 'Megumi\'s tracksuit.'}
      ]),
  JujutsuCharacter(
      kenji: '五条悟',
      name: 'Satoru Gojo',
      species: 'human',
      birthday: 'December 7, 1989',
      gender: Gender.male,
      grade: Grade.semiGrade1,
      description:
          'Satoru Gojo (五条悟 Gojō Satoru?) is one of the main protagonists of the Jujutsu Kaisen series. He is a special grade jujutsu sorcerer and widely recognized as the strongest in the world. Satoru is the pride of the Gojo Family, the first person to inherit both the Limitless and the Six Eyes in four hundred years. He works as a teacher at the Tokyo Jujutsu High and uses his influence to protect and train strong young allies.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/e/ef/Satoru_Gojo_%28Anime_2%29.png/revision/latest?cb=20201025013634.webp',
      appearance:
          'Satoru is a very tall, lean and muscular man who is in his late twenties and is considered relatively attractive, mainly due to his facial features. He has snow-white hair and the Six Eyes, which are a vibrant blue color. Satoru normally covers his eyes with a black blindfold which props up his hair and gives it a spikier appearance. When sporting a more casual look, Satoru will wear sunglasses and let his hair down to reach the base of his neck. While working, Satoru wears a dark blue zip-up jacket with a high collar that\'s also fairly wide. He wears slim-fit matching black pants and black dress boots. Before switching over to a simple blindfold, Satoru used to wear bandages over his eyes. Satoru enjoys wearing expensive clothing[7] and has a number of casual looks he\'ll pair with wearing his sunglasses. As a Tokyo Jujutsu High student, Satoru wore the normal school uniform with his sunglasses before adopting any sort of makeshift blindfold.',
      appearanceImages: [
        {
          'image': "images/Satoru_Gojo_as_a_child_(Anime).webp",
          'title': 'Satoru in his childhood.'
        },
        {
          'image': "images/Satoru_Gojo_young_(Anime).webp",
          'title': 'Satoru as a Jujutsu High student in 2006'
        },
        {
          'image': "images/Satoru_Gojo_(Volume_4).webp",
          'title': 'Satoru revealing his eyes.'
        },
        {
          'image': "images/Satoru_Gojo_(Prequel_Anime).webp",
          'title': 'Satoru using bandages to cover his eyes in 2017.'
        },
      ]),
  JujutsuCharacter(
      kenji: '釘崎野薔薇',
      name: 'Nobara Kugisaki',
      species: 'human',
      birthday: 'August 7th, 2002',
      gender: Gender.male,
      grade: Grade.grade3,
      description:
          'Nobara Kugisaki (釘崎野薔薇 Kugisaki Nobara?) is the tritagonist of the Jujutsu Kaisen series. She is a first-year student and grade 3 jujutsu sorcerer at Tokyo Jujutsu High studying under Satoru Gojo alongside Yuji and Megumi.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/d/dd/Nobara_Kugisaki_%28Anime_2%29.png/revision/latest?cb=20201219222346.webp',
      appearance:
          'Nobara is of average height with a slim figure. She has mid-length orange hair that reaches to her neck that is styled with bangs that cover the right side of her forehead. Nobara has orange eyes, long eyelashes and thin eyebrows of the same color. Nobara\'s jujutsu school uniform consists of a dark blue gakuran-style top (a button-down jacket) and a long matching skirt that reaches to just above her knees. She also sports black stockings and brown shoes along with her signature brown belt that holds her tools for jujutsu. As someone who enjoys dressing up, Nobara has several different outfits. She didn\'t have a tracksuit prior to enrolling at Jujutsu High and bought one shortly after. The tracksuit included a white and blue hoodie accented with a flower pattern, black leggings, and white shoes.',
      appearanceImages: [
        {
          'image': "images/Nobara_asking_to_switch_bags_with_Fumi.webp",
          'title': 'Nobara as a child.'
        },
        {
          'image': "images/Nobara_Kugisaki_(Chapter_98).webp",
          'title': 'Nobara in the manga (gray).'
        },
      ]),
  JujutsuCharacter(
      kenji: '乙骨憂太',
      name: 'Yuta Okkotsu',
      species: 'human',
      birthday: 'March 7th, 2001',
      gender: Gender.male,
      grade: Grade.specialGrade,
      description:
          'Yuta Okkotsu (乙骨憂太 Okkotsu Yūta?) is a major supporting character in the Jujutsu Kaisen series and the main protagonist of its prequel series, Jujutsu Kaisen 0: Jujutsu High. He was initially a special grade cursed human haunted by his late childhood friend, Rika Orimoto. Satoru Gojo mentored Yuta and enrolled him at Tokyo Jujutsu High. Yuta is currently a second-year student at Jujutsu High where he works as a jujutsu sorcerer. He was training overseas in Africa with Miguel until after the Shibuya Incident when he returned to Tokyo.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/7/79/Yuta_Okkotsu_%28Chapter_137%29.png/revision/latest?cb=20210201190010.webp',
      appearance:
          'Yuta is a young man of average height with disheveled black hair and dark blue eyes. As a first-year, Yuta\'s body language made it obvious that he was under a lot of stress. His posture was very unconfident, and he still has dark circles under his eyelids from a lack of sleep. As a second-year student, Yuta\'s hair has grown longer and he wears it in a more relaxed style instead of a spiky one. At his old school, Yuta wore a suit for their uniform. He sported a long-sleeve shirt that stops at his forearms or a black t-shirt and dark green pants for casual wear. After transferring to Tokyo Jujutsu High, Yuta received a specialized uniform. Yuta has a loose white uniform jacket with sleeves that stop at his forearms. He also wears slender blue jeans that tuck into white sneakers that match his jacket. Yuta also often carries his katana case on his back.',
      appearanceImages: [
        {
          'image': "images/Yuta_Okkotsu_(Prequel_Anime).webp",
          'title': 'Yuta as a first-year student'
        },
        {
          'image': "images/Yuta_Okkotsu_(Chapter_140).webp",
          'title': 'Yuta in the manga (gray).'
        },
        {
          'image': "images/Yuta_Okkotsu_(Volume_0).webp",
          'title': 'Yuta with human Rika.'
        },
        {
          'image': "images/Yuta_Okkotsu_and_Cursed_Rika.webp",
          'title': 'Yuta with cursed Rika.'
        },
      ]),
  JujutsuCharacter(
      kenji: '両面宿儺',
      name: 'Sukuna',
      species: 'human',
      birthday: '-',
      gender: Gender.male,
      description:
          'Ryomen Sukuna (両面宿儺 Ryōmen Sukuna?), more often referred to as simply Sukuna (宿儺 Sukuna?), is the strongest jujutsu sorcerer from a thousand years ago. Regarded as the undisputed King of Curses (呪いの王 Noroi no Ō?), Sukuna is one of the primary antagonists of the Jujutsu Kaisen series. According to legend, Sukuna was an Imaginary Demon (仮想の鬼神 Kasō no Kijin?) during the Heian Era but in truth he was a sorcerer also known as the Disgraced One (堕天 Daten?). Jujutsu sorcerers of the Golden Age of Jujutsu gave their all against him but ultimately fell one after another. Sukuna existed throughout the ages by transforming into a cursed object after death, a state where he split his power into twenty indestructible fingers.Sukuna was incarnated in June 2018 when Yuji Itadori consumed one of his fingers. Sukuna was trapped inside Yuji\'s body and was rarely in control until he managed to transfer his soul into the body of Megumi Fushiguro.',
      profileImage:
          'https://static.wikia.nocookie.net/jujutsu-kaisen/images/8/85/Sukuna_%28Chapter_117%29.png/revision/latest?cb=20210309183727.webp',
      appearance:
          'His past appearance is described as a demon with four arms and two faces.[1] Previously, he used to take the appearance of his former host: Yuji Itadori, but with pink spiked hair slightly pushed upfront and with tattoos/lines on his forehead, nose, cheeks, upper body, and abdomen. He also has a second pair of eyes underneath his normal eyes, which are usually closed. Now, he takes the appearance of his new current host: Megumi Fushiguro, but with uniquely styled black hair with long spikes that jut out in every direction around his head, resembling a sea-urchin and with tattoos/lines on his forehead, nose, cheeks, upper body, and abdomen. He also has a second pair of eyes underneath his normal eyes.[2] Sukuna also has two lines on both his wrists, upper arms, circles on both his shoulders with a dot in each, two-segmented curve lines on his chest, and two lines on his stomach while possessing Yuji/Megumi. Sukuna wears a light-colored kimono with a black edge, a black scarf, and black shoes.',
      appearanceImages: [
        {
          'image': "images/Sukuna_(Anime_2).webp",
          'title': 'Sukuna in Yuji\'s body.'
        },
        {
          'image': "images/Sukuna_(Chapter_227).webp",
          'title': 'Sukuna in Megumi\'s body while still using his likeness.'
        },
        {
          'image': "images/Sukuna_described_by_Uro.webp",
          'title': 'Sukuna in the manga. (gray)'
        },
      ]),
];

List<String> jujutsuHeroCarousel = [
  'images/carousel_1.webp',
  'images/carousel_2.webp',
  'images/carousel_3.webp',
  'images/carousel_4.webp'
];
