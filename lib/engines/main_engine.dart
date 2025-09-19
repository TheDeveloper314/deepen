import 'package:deepen/models/category.dart';
import 'package:deepen/models/question.dart';
import 'package:deepen/models/questions_pack.dart';

class MainEngine {
  final List<Category> _categories = [];

  final List<Map<String, dynamic>> data = [
    {
      "categoryName": {"en": "Friends", "ar": "أصحاب"},
      "categoryImage": "friends",
      "packs": [
        {
          "packName": {"en": "First Encounters", "ar": "أول تعارف"},
          "packImage": "first_encounter",
          "questions": [
            {"en": "How did we first meet?", "ar": "شلون أول مرّة التقينا؟"},
            {
              "en": "What was your first impression of me?",
              "ar": "شنو أول انطباع صار ببالك عليّا؟",
            },
            {
              "en":
                  "Do you like meeting new people quickly or do you take your time?",
              "ar": "تحب تعرّف الناس بسرعة لو تاخذ وقت؟",
            },
            {
              "en": "Who was your very first real friend?",
              "ar": "منو أوّل صديق حقيقي بحياتك؟",
            },
            {
              "en": "How do you usually choose your friends?",
              "ar": "شلون تختار أصحابك عادةً؟",
            },
            {
              "en": "Did anything funny happen the first time we met?",
              "ar": "أكو موقف مضحك صار بأول مرّة اجتمعنا؟",
            },
            {
              "en": "Who was your closest childhood friend?",
              "ar": "منو أقرب صديق إلك بالطفولة؟",
            },
            {
              "en": "Do you like remembering how you met your best friend?",
              "ar": "تحب تتذكر شلون تعرّفت على أعز صديق إلك؟",
            },
            {
              "en":
                  "If we went back to our first meeting, what would you change?",
              "ar": "إذا رجعنا لأول لقاء، شنو التغيير اللي تسويه؟",
            },
            {
              "en": "What was the first word you said to me?",
              "ar": "أول كلمة گلتها إلي شنو جانت؟",
            },
            {
              "en": "Do you prefer big gatherings or small hangouts?",
              "ar": "تحب التجمعات الكبيرة لو القعدات الصغيرة؟",
            },
            {
              "en": "Who was the first person you shared a secret with?",
              "ar": "منو أول شخص كليت له سرّك؟",
            },
            {
              "en": "What word do you always use to describe your friends?",
              "ar": "شنو الكلمة اللي دايمًا تصف بيها أصحابك؟",
            },
            {
              "en":
                  "Do you have a friendship that started wrong but became strong?",
              "ar": "أكو صداقة عندك بديت بالغلط وصارت قوية؟",
            },
            {
              "en": "What makes you feel a person deserves to be your friend?",
              "ar": "شنو الشي اللي يبينلك إن الشخص يستاهل يكون صديق؟",
            },
          ],
        },
        {
          "packName": {"en": "Fun & Laughter", "ar": "ضحك ووناسة"},
          "packImage": "fun_and_laughter",
          "questions": [
            {
              "en": "Who makes you laugh the most in the world?",
              "ar": "منو أكثر واحد يضحكك بالعالم؟",
            },
            {
              "en": "What’s the funniest thing that happened between us?",
              "ar": "شنو أطرف موقف صار بيناتنه؟",
            },
            {
              "en": "Do you prefer quick jokes or long funny stories?",
              "ar": "تحب النكتة السريعة لو القصة الطويلة المضحكة؟",
            },
            {
              "en": "Have you ever laughed until you cried? What happened?",
              "ar": "أكو مرّة ضحكت للدموع؟ شنو السبب؟",
            },
            {
              "en": "Who’s the best at imitating voices or people?",
              "ar": "منو أشطر واحد يقلد أصوات أو ناس؟",
            },
            {
              "en": "What’s the funniest thing that happened at school?",
              "ar": "شنو أطرف موقف صار وياك بالمدرسة؟",
            },
            {
              "en": "Do you enjoy pranks or hate them?",
              "ar": "تحب المقالب لو تكرهها؟",
            },
            {
              "en": "Have you ever tried a prank that backfired?",
              "ar": "أكو مرّة انت سويت مقلب وانقلب عليك؟",
            },
            {
              "en": "What always makes you laugh for no reason?",
              "ar": "شنو أكثر شي يضحكك بلا سبب؟",
            },
            {
              "en": "If we had a comedy show, what would you name it?",
              "ar": "إذا جان عدنه برنامج كوميدي، شنو راح تسمّيه؟",
            },
            {
              "en": "Do you like silly talks or serious ones?",
              "ar": "تحب تحچي سوالف غشيمية لو جدية؟",
            },
            {
              "en": "What’s the funniest travel memory you have?",
              "ar": "شنو أطرف موقف صار بالسفر؟",
            },
            {
              "en": "Is there a word that always makes you laugh?",
              "ar": "أكو كلمة دايمًا تنكلك وتضحكك؟",
            },
            {
              "en": "Who can make you laugh the fastest?",
              "ar": "منو أكثر واحد يعرف يضحّكك بسرعة؟",
            },
            {
              "en": "What funny proverb do you love?",
              "ar": "شنو المثل الشعبي المضحك اللي تحبه؟",
            },
          ],
        },
        {
          "packName": {"en": "Deep Conversations", "ar": "سوالف عميقة"},
          "packImage": "deep_conversation",
          "questions": [
            {
              "en": "What makes you believe in true friendships?",
              "ar": "شنو أكثر شي مخلّيك تصدّق بالصداقات الحقيقية؟",
            },
            {
              "en": "What does 'lifelong friend' mean to you?",
              "ar": "شنو معنى \"صديق عمر\" بالنسبة إلك؟",
            },
            {
              "en":
                  "If you had a conflict with a close friend, how would you solve it?",
              "ar": "إذا اختلفت ويا صديق غالي، شلون تحلها؟",
            },
            {
              "en":
                  "Do you share big secrets with more than one person or just one?",
              "ar": "تحب تحجي أسرارك الكبار لأكثر من واحد لو شخص واحد بس؟",
            },
            {
              "en": "Can friendships become like brotherhood?",
              "ar": "برأيك الصداقة تصير مثل الأخوة؟",
            },
            {
              "en": "What could make you end a friendship?",
              "ar": "شنو الشي الي لو صار يخليك تنهي صداقة؟",
            },
            {
              "en": "What’s the greatest lesson you learned from a friend?",
              "ar": "شنو أعظم درس تعلمته من صديق؟",
            },
            {
              "en": "What’s your biggest strength as a friend?",
              "ar": "شنو نقطة قوتك كصديق؟",
            },
            {
              "en":
                  "If your friend is upset but not talking, what would you do?",
              "ar": "إذا حسيت صديقك متضايق بس ما يحجي، شتسوي؟",
            },
            {
              "en":
                  "Do you prefer keeping childhood friendships or focusing on new ones?",
              "ar": "تحب تحافظ على صداقات الطفولة لو تركز على الجداد؟",
            },
            {
              "en":
                  "What’s the difference between a casual friend and a close one?",
              "ar": "شنو الفرق بين صديق عادي وصديق مقرّب؟",
            },
            {
              "en": "What’s the golden rule for long friendships?",
              "ar": "شنو النصيحة الذهبية للصداقة الطويلة؟",
            },
            {
              "en": "Do you think friendships break if there’s distance?",
              "ar": "تتوقع الصداقة تنكسر إذا ابتعدتوا بالمسافات؟",
            },
            {
              "en": "What keeps a friendship strong till the end?",
              "ar": "شنو الشي الي يخلي صداقة تستمر للآخر؟",
            },
            {
              "en":
                  "What’s the most inspiring thing a friend always tells you?",
              "ar": "شنو أكثر كلمة صديقك دايمًا يكلك إياها وتلهمك؟",
            },
          ],
        },
        {
          "packName": {"en": "Memories & Nostalgia", "ar": "الذكريات"},
          "packImage": "memories_and_nostalgia",
          "questions": [
            {
              "en": "Do you remember your first trip with friends?",
              "ar": "تتذكر أول سفرة ويا أصدقائك؟",
            },
            {
              "en": "What was the first place you all gathered to talk?",
              "ar": "شنو أول مكان جمعتكم السوالف؟",
            },
            {
              "en": "What’s the funniest story from school days?",
              "ar": "شنو أطرف سالفة من أيام المدرسة؟",
            },
            {
              "en": "Who was the first friend to do homework with you?",
              "ar": "منو أول صديق جان يسوي وياك واجباتك؟",
            },
            {
              "en": "What’s your most unforgettable memory?",
              "ar": "شنو أكثر ذكرى محفورة بالكَلب؟",
            },
            {
              "en": "Do you remember the first game you played together?",
              "ar": "تتذكر أول لعبة لعبتوها سوا؟",
            },
            {
              "en": "What’s the oldest photo you still keep?",
              "ar": "شنو أقدم صورة بعدك محتفظ بيها؟",
            },
            {
              "en": "Who was the first friend you went to the cinema with?",
              "ar": "منو أول صديق طلع وياك للسينما؟",
            },
            {
              "en": "What memory always makes you smile?",
              "ar": "شنو الذكرى الي كل مرة تتذكّرها تبتسم؟",
            },
            {
              "en": "What was your first holiday spent as friends?",
              "ar": "شنو أول عيد قضيتوه سوا كأصدقاء؟",
            },
            {
              "en": "Which old friend do you still wish to see?",
              "ar": "منو صديقك القديم الي بعدك تتمنى تشوفه؟",
            },
            {
              "en": "What was the first small party you all did?",
              "ar": "شنو أوّل مرة سوّيتوا بيها حفلة بسيطة؟",
            },
            {
              "en": "What’s the weirdest place you spent time together?",
              "ar": "شنو أغرب مكان قضيتوا بيه وقت؟",
            },
            {
              "en": "Do you remember your first setback as a group?",
              "ar": "تتذكرون أوّل نكسة سوا شلون مرّت؟",
            },
            {
              "en": "What memory do you love telling over and over?",
              "ar": "شنو الذكرى الي تحب تحجيها دائمًا و ما تمل؟",
            },
          ],
        },
        {
          "packName": {"en": "Future Dreams", "ar": "أحلام المستقبل"},
          "packImage": "future_dreams",
          "questions": [
            {
              "en": "What are your dreams with your friends in the future?",
              "ar": "شنو أحلامك ويا أصدقائك بالمستقبل؟",
            },
            {
              "en": "Do you imagine staying friends after 20 years?",
              "ar": "تتخيل تبقون ربع بعد ٢٠ سنة؟",
            },
            {
              "en": "How would you feel if your friend became famous?",
              "ar": "إذا صديقك صار مشهور، شلون تحس؟",
            },
            {
              "en": "Would you start a business with your friend?",
              "ar": "تحب تسوي بزنس ويا صديقك لو لأ؟",
            },
            {
              "en": "What are your travel plans with your friends?",
              "ar": "شنو خطط السفر ويا ربعك؟",
            },
            {
              "en":
                  "What’s something you wish to achieve and celebrate with them?",
              "ar": "شنو الشي الي تتمنّى تحققه وتشارك فرحته وياهم؟",
            },
            {
              "en": "Would you like to live next to your best friend?",
              "ar": "تحب تسوي بيت بصف بيت صديقك؟",
            },
            {
              "en": "What’s the craziest idea you’d want to do together?",
              "ar": "شنو الفكرة الجنونية الي ممكن تسووها سوا؟",
            },
            {
              "en":
                  "If each of you moved to different countries, how would you keep in touch?",
              "ar": "إذا كل واحد راح دولة، شلون تحافظون على العلاقة؟",
            },
            {
              "en":
                  "What’s your dream scenario with your friends in the future?",
              "ar": "شنو أحلى سيناريو تحلم بيه بالمستقبل ويا ربعك؟",
            },
            {
              "en": "Do you wish your friends worked in the same field as you?",
              "ar": "تتمنّى أصدقاؤك يشتغلون وياك بنفس المجال؟",
            },
            {
              "en": "What ambition do you hope all your friends achieve?",
              "ar": "شنو الطموح الي تتمنى يتحقق للجميع؟",
            },
            {
              "en":
                  "If your friend became rich, what do you think they’d do first?",
              "ar": "إذا صديقك صار غني، تتوقّع شيسوي أول شي؟",
            },
            {
              "en": "What’s the one future trip that must happen?",
              "ar": "شنو الرحلة المستقبلية الي لازم تصير؟",
            },
            {
              "en":
                  "Do you imagine living in the same neighborhood again someday?",
              "ar": "تتخيّل تعيشون كلّكم بنفس المنطقة بعدين؟",
            },
          ],
        },
      ],
    },
    {
      "categoryName": {"en": "Family", "ar": "أهل وأقارب"},
      "categoryImage": "family",
      "packs": [
        {
          "packName": {"en": "Childhood Memories", "ar": "ذكريات الطفولة"},
          "packImage": "childhood_memories",
          "questions": [
            {
              "en": "What’s your happiest childhood memory with family?",
              "ar": "شنو أسعد ذكرى من طفولتك ويا الأهل؟",
            },
            {
              "en": "Who was your favorite person to play with as a kid?",
              "ar": "منو أكثر واحد جان تحب تلعب وياه وأنت طفل؟",
            },
            {
              "en": "What’s a family tradition you remember from childhood?",
              "ar": "شنو عادة عائلية تذكرها من الطفولة؟",
            },
            {
              "en": "What was your favorite family trip as a kid?",
              "ar": "شنو كانت أجمل سفرة ويا أهلك وأنت صغير؟",
            },
            {
              "en":
                  "Do you remember your first day at school and who was there?",
              "ar": "تتذكر أول يوم مدرسة ومنو جان وياك؟",
            },
            {
              "en": "What food reminds you of childhood at home?",
              "ar": "شنو الأكلة اللي تذكرك بطفولتك بالبيت؟",
            },
            {
              "en": "Did your family have a special game you always played?",
              "ar": "أكو لعبة خاصة دايمًا تلعبوها كعائلة؟",
            },
            {
              "en": "What song or lullaby reminds you of childhood?",
              "ar": "شنو الأغنية أو التهويدة اللي تذكرك بطفولتك؟",
            },
            {
              "en": "Who was your childhood hero in the family?",
              "ar": "منو كان بطل طفولتك من أهلك؟",
            },
            {
              "en": "What’s the funniest memory with siblings as kids?",
              "ar": "شنو أطرف ذكرى ويا إخوتك وانتوا صغار؟",
            },
            {
              "en": "Do you remember the first pet your family had?",
              "ar": "تتذكر أول حيوان أليف جان عند عائلتك؟",
            },
            {
              "en": "What was your favorite holiday as a kid?",
              "ar": "شنو كان أحلى عيد عندك وإنت صغير؟",
            },
            {
              "en": "Did you have a secret hiding spot at home?",
              "ar": "كان عندك مكان سرّي بالبيت وإنت طفل؟",
            },
            {
              "en": "What did you always get in trouble for at home?",
              "ar": "شنو الشي اللي كنت دايمًا تنحط عليه بمشاكل بالبيت؟",
            },
            {
              "en": "What’s the first story your parents told you?",
              "ar": "شنو أول قصة سمعتها من أهلك؟",
            },
          ],
        },
        {
          "packName": {"en": "Parents & Elders", "ar": "الوالدين والكبار"},
          "packImage": "parents_and_elders",
          "questions": [
            {
              "en": "What’s the best advice you got from your parents?",
              "ar": "شنو أحلى نصيحة أخذتها من أهلك؟",
            },
            {
              "en": "Do you resemble your mom or dad more?",
              "ar": "تشبه الوالد لو الوالدة أكثر؟",
            },
            {
              "en": "What lesson did your grandparents always teach you?",
              "ar": "شنو الدرس اللي دايمًا علموك عليه جدودك؟",
            },
            {
              "en": "What was the strictest rule in your family?",
              "ar": "شنو جانت أشد قاعدة بالبيت؟",
            },
            {
              "en": "Do you have a favorite story your parents told you?",
              "ar": "عندك قصة مفضلة أهلك حكولك ياها؟",
            },
            {
              "en": "What’s a habit you learned from your mom or dad?",
              "ar": "شنو عادة أخذتها من الوالدين؟",
            },
            {
              "en": "What makes your family unique compared to others?",
              "ar": "شنو يميز عائلتك عن باقي العوائل؟",
            },
            {
              "en": "What do you admire most about your parents?",
              "ar": "شنو أكثر شي تحبه بأهلك؟",
            },
            {
              "en": "What’s a phrase your parents always repeated?",
              "ar": "شنو الجملة اللي دايمًا أهلك يكولوهالك؟",
            },
            {
              "en": "What tradition did your elders never skip?",
              "ar": "شنو عادة ما تركها الكبار بعائلتك؟",
            },
            {
              "en": "Did your grandparents spoil you more than your parents?",
              "ar": "جدودك دللوك أكثر من أهلك؟",
            },
            {
              "en": "What was your mom’s special dish?",
              "ar": "شنو الطبخة الخاصة بالوالدة؟",
            },
            {
              "en": "What’s the funniest advice you ever got from family?",
              "ar": "شنو أطرف نصيحة وصلتك من أهلك؟",
            },
            {
              "en": "What do you wish you told your parents more often?",
              "ar": "شنو الشي اللي تتمنى تحچي بيه ويا أهلك أكثر؟",
            },
            {
              "en": "What values do you want to pass on from your parents?",
              "ar": "شنو القيم اللي تحب تورثها من أهلك؟",
            },
          ],
        },
        {
          "packName": {"en": "Traditions & Culture", "ar": "التقاليد والثقافة"},
          "packImage": "tradition_and_culture",
          "questions": [
            {
              "en": "What’s your favorite family tradition?",
              "ar": "شنو تقليدك العائلي المفضل؟",
            },
            {
              "en": "What holiday means the most to your family?",
              "ar": "شنو العيد الأكثر أهمية عندكم؟",
            },
            {
              "en": "What’s a cultural story your family always repeats?",
              "ar": "شنو القصة التراثية اللي أهلك يكرروها؟",
            },
            {
              "en": "What’s a proverb your family always uses?",
              "ar": "شنو المثل الشعبي اللي دايمًا ينقال ببيتكم؟",
            },
            {
              "en":
                  "Do you celebrate traditions the same way as your grandparents?",
              "ar": "تحتفلون بالعادات نفس طريقة جدودكم؟",
            },
            {
              "en": "What family recipe is most special to you?",
              "ar": "شنو الوصفة العائلية اللي تعتبرها مميزة؟",
            },
            {
              "en": "What’s the most fun family celebration?",
              "ar": "شنو أونَس احتفال عائلي مرّ عليك؟",
            },
            {
              "en": "What’s a unique habit in your family?",
              "ar": "شنو العادة الغريبة أو المميزة بعائلتكم؟",
            },
            {
              "en": "What traditional clothes do you remember wearing?",
              "ar": "شنو اللبس التقليدي اللي تذكره؟",
            },
            {
              "en": "Do you still keep up with family traditions?",
              "ar": "بعدك تحافظ على عادات العائلة؟",
            },
            {
              "en": "What cultural song reminds you of family gatherings?",
              "ar": "شنو الأغنية الشعبية اللي تذكرك بجمعات الأهل؟",
            },
            {
              "en": "What tradition do you want to pass on?",
              "ar": "شنو العادة اللي تحب تورثها لأولادك؟",
            },
            {
              "en": "What tradition do you not like?",
              "ar": "شنو التقليد اللي ما تحبه؟",
            },
          ],
        },
        {
          "packName": {"en": "Everyday Life", "ar": "الحياة اليومية"},
          "packImage": "everyday_life",
          "questions": [
            {
              "en": "Who makes breakfast in your family?",
              "ar": "منو يسوي الفطور بعائلتكم؟",
            },
            {
              "en": "What’s your family’s favorite TV show?",
              "ar": "شنو البرنامج المفضل عند عائلتك؟",
            },
            {
              "en": "Who usually runs the errands?",
              "ar": "منو المسؤول عن قضاء الحوائج بالبيت؟",
            },
            {
              "en": "What’s your family’s favorite activity together?",
              "ar": "شنو النشاط المفضل اللي تسووه سوا؟",
            },
            {
              "en": "Who tells the funniest stories at home?",
              "ar": "منو أكثر واحد يحچي سوالف مضحكة بالبيت؟",
            },
            {
              "en": "What’s a typical family dinner like?",
              "ar": "شلون يكون العشا العائلي عادة؟",
            },
            {
              "en": "Who is the most organized at home?",
              "ar": "منو أكثر واحد مرتب بالبيت؟",
            },
            {
              "en": "What’s a common daily phrase in your family?",
              "ar": "شنو الجملة اليومية اللي تنقال ببيتكم؟",
            },
            {
              "en": "What’s the most chaotic moment your family has?",
              "ar": "شنو أكثر موقف عشوائي يصير بعائلتكم؟",
            },
            {
              "en": "What’s the best thing about daily life with family?",
              "ar": "شنو أحلى شي بالحياة اليومية ويا الأهل؟",
            },
          ],
        },
      ],
    },
    {
      "categoryName": {"en": "Couples", "ar": "حبايب وعِشرة"},
      "categoryImage": "couples",
      "packs": [
        {
          "packName": {"en": "First Dates", "ar": "أول لقاءات"},
          "packImage": "first_dates",
          "questions": [
            {
              "en": "Where did we first go out together?",
              "ar": "وين أول مرة طلعنا سوى؟",
            },
            {
              "en": "What was your first impression of me?",
              "ar": "شنو أول انطباع جان عندك عني؟",
            },
            {
              "en": "What made you want to see me again?",
              "ar": "شنو اللي خلاك تحب تشوفني مرّة ثانية؟",
            },
            {
              "en": "What do you remember most from our first date?",
              "ar": "شنو أكثر شي تذكره من أول موعد؟",
            },
            {
              "en": "Did you feel shy on our first meeting?",
              "ar": "حسّيت بخجل أول مرة اجتمعنا؟",
            },
            {
              "en": "Who suggested meeting first?",
              "ar": "منو أول واحد اقترح نلتقي؟",
            },
            {
              "en": "What food did we eat the first time?",
              "ar": "شنو أول أكلة أكلناها سوى؟",
            },
            {
              "en": "What song reminds you of our first time?",
              "ar": "شنو الأغنية اللي تذكرك بأول مرة؟",
            },
            {
              "en": "What did you think after our first goodbye?",
              "ar": "شنو كان شعورك بعد أول وداع؟",
            },
            {
              "en": "Did you expect we’d last this long?",
              "ar": "كنت متوقع نستمر لهل وقت؟",
            },
            {
              "en": "What color was I wearing that day?",
              "ar": "شنو اللون اللي لبسته أول مرة شفنا بعض؟",
            },
            {
              "en": "Did you tell anyone after our first date?",
              "ar": "حچيت لحدا بعد أول موعد؟",
            },
            {
              "en": "What’s the funniest thing from our first date?",
              "ar": "شنو أطرف شي صار بأول لقاء؟",
            },
            {
              "en": "What would you change about our first meeting?",
              "ar": "شنو الشي اللي تتمنى تغيّره بأول لقاء؟",
            },
            {
              "en": "What’s one word to describe our first time?",
              "ar": "شنو كلمة وحدة توصف بيها أول لقاء؟",
            },
          ],
        },
        {
          "packName": {"en": "Getting Serious", "ar": "علاقة جدية"},
          "packImage": "getting_serious",
          "questions": [
            {
              "en": "When did you realize we’re serious?",
              "ar": "إيمتى حسيت إنو علاقتنه جدية؟",
            },
            {
              "en": "What was the first promise we made each other?",
              "ar": "شنو أول وعد بيني وبينك؟",
            },
            {
              "en": "What makes you trust me?",
              "ar": "شنو الشي اللي يخليك تثق بيه؟",
            },
            {
              "en": "What do you want to build together?",
              "ar": "شنو اللي تحب تبنيه سوى؟",
            },
            {
              "en": "What’s the hardest challenge we overcame?",
              "ar": "شنو أصعب تحدي مرينا بيه وتخطيناه؟",
            },
            {
              "en": "Do you tell me everything honestly?",
              "ar": "تحچيلي بكل شي بصدق؟",
            },
            {
              "en": "What makes our bond strong?",
              "ar": "شنو اللي يخلي علاقتنا قوية؟",
            },
            {
              "en": "What’s your favorite memory of us so far?",
              "ar": "شنو أجمل ذكرى بيني وبينك؟",
            },
            {
              "en": "What do you want us to learn together?",
              "ar": "شنو الشي اللي تتمنى نتعلمه سوا؟",
            },
            {
              "en": "What made you sure I’m special for you?",
              "ar": "شنو اللي خلاك تتأكد إني شخص مميز إلك؟",
            },
            {
              "en": "What do you want us to do more often?",
              "ar": "شنو الشي اللي تحب نسويه أكثر؟",
            },
            {
              "en": "What values do we share most?",
              "ar": "شنو القيم اللي نشاركها أكثر شي؟",
            },
            {
              "en": "Do you like how we solve problems?",
              "ar": "تحب الطريقة اللي نحل بيها مشاكلنا؟",
            },
            {
              "en": "What’s something small that means a lot to you?",
              "ar": "شنو الشي البسيط اللي إله معنى كبير إلك؟",
            },
            {
              "en": "What keeps us moving forward?",
              "ar": "شنو اللي يخلينا نكمل سوى؟",
            },
          ],
        },
        {
          "packName": {"en": "Engagement Talks", "ar": "سوالف الخطوبة"},
          "packImage": "engagement_talks",
          "questions": [
            {
              "en": "What was the first thing you thought about engagement?",
              "ar": "شنو أول شي فكرت بيه عن الخطوبة؟",
            },
            {
              "en": "Who was more nervous, you or me?",
              "ar": "منو جان أكثر متوتر بالخطوبة، إنت لو أني؟",
            },
            {
              "en": "What was your favorite part of engagement day?",
              "ar": "شنو أكثر شي حبيته بيوم الخطوبة؟",
            },
            {
              "en": "What’s a funny moment from our engagement?",
              "ar": "شنو الموقف المضحك اللي صار بخطوبتنا؟",
            },
            {
              "en": "What made you feel happiest that day?",
              "ar": "شنو الشي اللي خلاك أسعد شخص بيه؟",
            },
            {
              "en": "What was the best gift you received then?",
              "ar": "شنو أحلى هدية وصلتك بذاك اليوم؟",
            },
            {
              "en": "What word did you hear most that day?",
              "ar": "شنو الكلمة اللي سمعتها أكثر يوم الخطوبة؟",
            },
            {
              "en": "What was the tastiest thing you ate?",
              "ar": "شنو ألذ شي أكلته يومها؟",
            },
            {"en": "Who congratulated us first?", "ar": "منو أول شخص باركلنا؟"},
            {
              "en": "What was the funniest compliment you got?",
              "ar": "شنو أطرف مجاملة سمعتها؟",
            },
            {
              "en": "Who was most emotional that day?",
              "ar": "منو جان أكثر واحد متأثر بذاك اليوم؟",
            },
            {
              "en": "What would you change if we re-did it?",
              "ar": "شنو اللي تغيره لو نعيد يوم الخطوبة؟",
            },
            {
              "en": "What’s a phrase people kept saying?",
              "ar": "شنو الجملة اللي كل الناس يكولوها يومها؟",
            },
            {
              "en": "What’s the first thing you told me after it ended?",
              "ar": "شنو أول كلمة گلتلي بعد ما خلص الحفل؟",
            },
            {
              "en": "What do you always remember about our engagement?",
              "ar": "شنو الذكرى اللي دايمًا تتذكرها من خطوبتنا؟",
            },
          ],
        },
        {
          "packName": {"en": "Pre-Marriage Conversations", "ar": "قبل الزواج"},
          "packImage": "premarriage_conversations",
          "questions": [
            {
              "en": "What scared you most before marriage?",
              "ar": "شنو أكثر شي خوفك قبل الزواج؟",
            },
            {
              "en": "What did you expect life would be like?",
              "ar": "شنو كنت تتوقع حياتنا راح تكون؟",
            },
            {
              "en": "What’s the best advice you heard before marriage?",
              "ar": "شنو أحلى نصيحة سمعتها قبل الزواج؟",
            },
            {
              "en": "What was your dream for our future life?",
              "ar": "شنو كان حلمك لحياتنا الجاية؟",
            },
            {
              "en": "What’s the most exciting plan we made before marriage?",
              "ar": "شنو أونَس خطة خططناها قبل الزواج؟",
            },
            {
              "en": "What did your family say to you before marriage?",
              "ar": "شنو أهلك نصحوك بيه قبل الزواج؟",
            },
            {
              "en": "What made you most certain about marrying me?",
              "ar": "شنو الشي اللي خلاك متأكد تتزوجني؟",
            },
            {
              "en": "What’s the funniest thought you had about married life?",
              "ar": "شنو أطرف فكرة خطرت ببالك عن الحياة الزوجية؟",
            },
            {
              "en": "What tradition did you want to keep after marriage?",
              "ar": "شنو العادة اللي حبيت تظل موجودة بعد الزواج؟",
            },
            {
              "en": "What new habit did you want us to start?",
              "ar": "شنو العادة الجديدة اللي حبيت نبدي بيها سوى؟",
            },
            {
              "en": "What made you nervous about starting a home?",
              "ar": "شنو اللي خلاك متوتر من تأسيس بيت؟",
            },
            {
              "en": "What’s one promise you made before marriage?",
              "ar": "شنو الوعد اللي قطعته قبل الزواج؟",
            },
            {
              "en": "What scared you least about marriage?",
              "ar": "شنو أقل شي خوفك من الزواج؟",
            },
            {
              "en": "What was your first goal as a couple?",
              "ar": "شنو أول هدف خططناه كزوجين؟",
            },
            {
              "en": "What was the best surprise before marriage?",
              "ar": "شنو أحلى مفاجأة صارتلك قبل الزواج؟",
            },
          ],
        },
        {
          "packName": {"en": "Dreams & Plans", "ar": "الأحلام والخطط المشتركة"},
          "packImage": "dreams_and_plans",
          "questions": [
            {
              "en": "Where do you dream we travel together?",
              "ar": "وين تحلم نسافر سوى؟",
            },
            {
              "en": "What’s our biggest future plan?",
              "ar": "شنو أكبر خطة مستقبلية إلنا؟",
            },
            {
              "en": "What house do you imagine for us?",
              "ar": "شنو شكل البيت اللي تتخيله إلنا؟",
            },
            {
              "en": "What dream do you want us to chase together?",
              "ar": "شنو الحلم اللي تحب نلاحقه سوى؟",
            },
            {
              "en": "What’s a skill you want us to learn together?",
              "ar": "شنو المهارة اللي تحب نتعلمها سوى؟",
            },
            {
              "en": "What kind of family do you see us building?",
              "ar": "شلون تتخيل العائلة اللي راح نبنيها؟",
            },
            {
              "en": "What’s your dream job for the future?",
              "ar": "شنو شغلك الحلمي للمستقبل؟",
            },
            {
              "en": "Where do you see us in 10 years?",
              "ar": "وين تشوفنا بعد 10 سنين؟",
            },
            {
              "en": "What tradition do you want to start with me?",
              "ar": "شنو العادة اللي تحب نبدأها سوى؟",
            },
            {
              "en": "What’s your financial goal for us?",
              "ar": "شنو هدفك المالي إلنا؟",
            },
            {
              "en": "What’s the funniest plan we ever made?",
              "ar": "شنو أطرف خطة خططناها؟",
            },
            {
              "en": "What kind of trips do you dream of?",
              "ar": "شنو نوع السفرة اللي تحلم بيها؟",
            },
            {
              "en": "What dream feels impossible but fun to think about?",
              "ar": "شنو الحلم اللي تحسه مستحيل بس ممتع تحلم بيه؟",
            },
            {
              "en": "What do you want to save up for?",
              "ar": "شنو الشي اللي تحب ندخر إله؟",
            },
            {
              "en": "What’s a project you want to start with me?",
              "ar": "شنو المشروع اللي تحب نبدأه سوى؟",
            },
          ],
        },
        {
          "packName": {
            "en": "Anniversaries & Special Moments",
            "ar": "أعياد وذكريات خاصة",
          },
          "packImage": "anniversaries_and_special_moments",
          "questions": [
            {
              "en": "What was our first anniversary like?",
              "ar": "شلون كان أول عيد إلنا؟",
            },
            {
              "en": "What gift meant the most to you?",
              "ar": "شنو الهدية اللي جانت أغلى عندك؟",
            },
            {
              "en": "What’s the funniest thing we celebrated?",
              "ar": "شنو أطرف شي احتفلنا بيه؟",
            },
            {
              "en": "What moment made you cry from happiness?",
              "ar": "شنو اللحظة اللي بكيت بيها من الفرح؟",
            },
            {
              "en": "What was your favorite birthday surprise?",
              "ar": "شنو أحلى مفاجأة عيد ميلاد صارتلك؟",
            },
            {
              "en": "What’s the best cake we had?",
              "ar": "شنو أحلى كيك أكلناه؟",
            },
            {
              "en": "Who plans better celebrations, you or me?",
              "ar": "منو يخطط للاحتفالات أحسن، أني لو إنت؟",
            },
            {
              "en": "What holiday do you love celebrating together?",
              "ar": "شنو العيد اللي تحبه أكثر لما نحتفل سوى؟",
            },
            {
              "en": "What’s the first gift you gave me?",
              "ar": "شنو أول هدية عطيتني إياها؟",
            },
            {
              "en": "What’s the most romantic thing we did?",
              "ar": "شنو أكثر شي رومانسي سويناه؟",
            },
            {
              "en": "What picture means the most to you?",
              "ar": "شنو الصورة اللي إلها معنى كبير إلك؟",
            },
            {
              "en": "What’s the funniest gift exchange we had?",
              "ar": "شنو أطرف تبادل هدايا بينه؟",
            },
            {
              "en": "What was your favorite date ever?",
              "ar": "شنو أجمل موعد مرينا بيه؟",
            },
            {
              "en": "What moment do you never forget?",
              "ar": "شنو اللحظة اللي ما تنساها؟",
            },
            {
              "en": "What’s the best surprise I gave you?",
              "ar": "شنو أحلى مفاجأة سويتهالك؟",
            },
          ],
        },
        {
          "packName": {"en": "Pregnancy & Children", "ar": "الحمل والأطفال"},
          "packImage": "pregnancy_and_children",
          "questions": [
            {
              "en": "What was your first thought about having kids?",
              "ar": "شنو كان أول تفكير عندك عن الأطفال؟",
            },
            {
              "en": "What’s the cutest name you thought of?",
              "ar": "شنو أظرف اسم خطر على بالك؟",
            },
            {
              "en": "Who will spoil the kids more?",
              "ar": "منو راح يدلل الأطفال أكثر؟",
            },
            {
              "en": "What’s the funniest baby story you heard?",
              "ar": "شنو أطرف سالفة سمعتها عن الأطفال؟",
            },
            {
              "en": "What kind of parent do you want to be?",
              "ar": "شنو نوع الأبو/الأم اللي تحب تكونه؟",
            },
            {
              "en": "What baby habit do you find funniest?",
              "ar": "شنو العادة الطفولية اللي تضحكك أكثر؟",
            },
            {
              "en": "What’s your dream family activity?",
              "ar": "شنو النشاط العائلي اللي تحلم بيه؟",
            },
            {
              "en": "What’s the most emotional thought about being a parent?",
              "ar": "شنو أكثر فكرة مؤثرة عن الأبوّة/الأمومة؟",
            },
            {
              "en": "What cartoon do you want to watch with kids?",
              "ar": "شنو الكارتون اللي تحب تشوفه ويا أطفالك؟",
            },
            {
              "en": "What’s your favorite children’s book?",
              "ar": "شنو كتاب الأطفال المفضل عندك؟",
            },
            {
              "en": "What habit do you want to teach kids?",
              "ar": "شنو العادة اللي تحب تعلمها للأطفال؟",
            },
            {
              "en": "What do you look forward to as parents?",
              "ar": "شنو أكثر شي متحمسله كأبوين؟",
            },
            {
              "en": "What’s the funniest question kids ask?",
              "ar": "شنو أطرف سؤال يسألوه الأطفال؟",
            },
            {
              "en": "What’s the best kids’ game?",
              "ar": "شنو أحلى لعبة للأطفال؟",
            },
            {
              "en": "What do you dream your kids achieve?",
              "ar": "شنو تحلم يحققوه أولادك؟",
            },
          ],
        },
      ],
    },
  ];

  MainEngine() {
    for (Map<String, dynamic> categoryJson in data) {
      List<QuestionsPack> packs = [];
      for (Map<String, dynamic> packJson in categoryJson["packs"]) {
        List<Question> questions = [];
        for (Map<String, dynamic> questionJson in packJson["questions"]) {
          questions.add(Question.fromJson(questionJson));
        }
        packs.add(QuestionsPack.fromJson(packJson, questions));
      }
      _categories.add(Category.fromJson(categoryJson, packs));
    }
  }

  List<Category> getCategories() {
    return _categories;
  }

  List<QuestionsPack> getQuestionsPacks(List<String> packsNames) {
    final List<QuestionsPack> questionsPacks = [];
    for (String packName in packsNames) {
      for (Category category in _categories) {
        for (QuestionsPack pack in category.packs) {
          if (packName == pack.packName["en"]) {
            questionsPacks.add(pack);
          }
        }
      }
    }
    return questionsPacks;
  }
}

final MainEngine mainEngine = MainEngine();
