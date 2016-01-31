# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

STDOUT.write 'create users'
admin = User.create email: 'admin@admin.com', password: '12345678'
admin.add_role :admin

# Create projects
STDOUT.write "\ncreate projects"

5.times do
  Project.create! name: Faker::Lorem.word,
                  github: "https://github.com/#{Faker::Lorem.word}/#{Faker::Lorem.word}",
                  twitter: "https://twitter.com/#{Faker::Lorem.word}",
                  keywords: %w(owl ontology lod),
                  status: true,
                  title: Faker::Lorem.word,
                  logo: Faker::Avatar.image,
                  start_date: [*1.month.ago.to_date..1.day.ago.to_date].sample,
                  end_date: [*1.month.from_now.to_date..1.year.from_now.to_date].sample,
                  description: Faker::Lorem.paragraphs.first,
                  link: Faker::Internet.url
end

STDOUT.write "\ncreate publications"

17.times do
  Publication.create! bib: "#{Faker::Name.name}, #{Faker::Name.name}, #{Faker::Name.name} #{Faker::Lorem.sentence} // #{Faker::Lorem.sentence(2)} #{[*1991..2016].sample}. V. #{Faker::Number.number(2)}. N #{Faker::Number.number(1)}."
end

STDOUT.write "\ncreate people"

12.times do
  Person.create! name: Faker::Name.name,
                 university: 'ITMO University (Saint Petersburg National Research University of Information Technologies, Mechanics and Optics)',
                 email: Faker::Internet.email,
                 photo: Faker::Avatar.image
end

STDOUT.write "\ncreate pages"

Page.create! name: 'index',
             path: '/pages/index',
             title: 'Главная',
             html: '<p>Кафедра информатики и прикладной математики совместно с кафедрой ВТ обеспечивает подготовку бакалавров и магистров по направлениям <strong>«Программная инженерия»</strong> и <strong>«Информатика и вычислительная техника»</strong>, а также обучение студентов со многих направлений подготовки НИУ ИТМО основам программирования и алгоритмических языков.</p>
             <hr />
             <h4>Подготовка бакалавров по направлению:</h4>
             <h5><b>09.03.04 «Программная инженерия»</b></h5>
             <p>Профиль подготовки <a title="Программная инженерия — бакалавриат" href="http://ipm.ifmo.ru/bachelor-09-03-04/">«Разработка программно-информационных систем»</a></p>
             <p>Выпускникам присваивается степень (квалификация) &#171;бакалавр техники и технологии&#187;. Срок обучения – 4 года.</p>
             <hr />
             <h4>Подготовка магистров по направлениям:</h4>
             <h5><b>09.04.04 «Программная инженерия»</b></h5>
             <p>Профиль подготовки <a title="Программная инженерия — магистратура" href="http://ipm.ifmo.ru/master-09-04-04/">«Разработка программно-информационных систем»</a></p>
             <h5><b>09.04.01 «Информатика и вычислительная техника»</b></h5>
             <p>Профиль подготовки <a title="Информатика и вычислительная техника — магистратура" href="http://ipm.ifmo.ru/master-09-04-01/">«Математические модели и компьютерное моделирование»</a></p>
             <p>Выпускникам присваивается степень (квалификация) &#171;магистр техники и технологии&#187;. Срок обучения – 2 года.</p>'

Page.create! name: 'abit',
             path: '/pages/abit',
             title: 'Абитуриенту',
             html: '<p><strong>Как определиться с будущей профессией?</strong><br />
             В какой-то момент каждый человек задаётся этим вопросом.</p>
             <p>Каждая профессия по-своему интересна и, несомненно, важна. У нас Вы сможете стать квалифицированным IT-специалистом с широким кругозором в области программирования, баз данных, вычислительных сетей, проектирования программного обеспечения, а богатый опытом и знаниями преподавательский состав будет рад помочь Вам с выбором направления своей деятельности и становлением, как специалиста.</p>
             <p>Уже в процессе обучения наши студенты становятся очень востребованными на рынке труда: на занятиях они могут получить необходимые для успешного трудоустройства навыки и знания. Начиная со второго года обучения, у студентов есть возможность проходить производственную практику в таких организациях, как ОКБ &#171;Электроавтоматика&#187; или Digital Design, а также остаться работать там будучи студентами, получив реальный опыт работы по специальности.</p>
             <p>Вы можете поступить на кафедру информатики и прикладной математики на дневную форму обучения (набор на вечернюю или заочную форму обучения не производится) по направлениям подготовки:</p>
             <h4>Бакалавров:</h4>
             <h5><b>09.03.04 «Программная инженерия»</b></h5>
             <p>Профиль подготовки <a title="Программная инженерия — бакалавриат" href="http://ipm.ifmo.ru/bachelor-09-03-04/">«Разработка программно-информационных систем»</a></p>
             <p>Выпускникам присваивается степень (квалификация) &#171;бакалавр техники и технологии&#187;. Срок обучения – 4 года.</p>
             <hr />
             <h4>Магистров:</h4>
             <h5><b>09.04.04 «Программная инженерия»</b></h5>
             <p>Профиль подготовки <a title="Программная инженерия — магистратура" href="http://ipm.ifmo.ru/master-09-04-04/">«Разработка программно-информационных систем»</a></p>
             <h5><b>09.04.01 «Информатика и вычислительная техника»</b> (старый код направления &#8212; 23.01.00)</h5>
             <p>Профиль подготовки <a title="Информатика и вычислительная техника — магистратура" href="http://ipm.ifmo.ru/master-09-04-01/">«Математические модели и компьютерное моделирование»</a></p>
             <p>Выпускникам присваивается степень (квалификация) &#171;магистр техники и технологии&#187;. Срок обучения – 2 года.</p>
             <hr />
             <p><b>Аспирантура кафедры информатики и прикладной математики</b> предоставляет возможность продолжить получение образования по следующим научным специальностям:</p>
             <ul>
             <li>05.13.06 – Автоматизация и управление технологическими процессами и производствами (образование)</li>
             <li>05.13.11 – Математическое и программное обеспечение вычислительных машин, комплексов и компьютерных сетей</li>
             <li>05.13.12 – Системы автоматизации проектирования (приборостроение)</li>
             <li>05.13.18 – Математическое моделирование, численные методы и комплексы программ</li>
             </ul>'

Page.create! name: 'student',
             path: '/pages/student',
             title: 'Студенту',
             html: '<p><a href="http://ipm.ifmo.ru/practice/">Информация</a> по практике для студентов 2-го и 3-го курсов.</p>
             <p><a href="http://ipm.ifmo.ru/prog/">Материалы </a>по дисциплине &#171;Основы программирования&#187; (1 курс ВТ, ИПМ).</p>
             <p><a href="http://ipm.ifmo.ru/moe/">Материалы</a> по дисциплине &#171;Методы онтологического инжиниринга&#187; (6 курс ВТ, ИПМ)</p>
             <p><a href="http://ipm.ifmo.ru/virtualization-2014-11-16/">Информация </a>о курсе лекций по виртуализации.</p>
             <p><a href="http://ipm.ifmo.ru/wp-content/uploads/2014/12/CompGraphics-slides.zip">Презентации лекций</a> по дисциплине &#171;Компьютерная графика&#187; (кафедра ВТ, материалы от 03.12.2014).</p>
             <p><a href="http://ipm.ifmo.ru/wp-content/uploads/2014/12/onlyLabsGraphics.pdf">Задания</a> к доп. курсу по Си, а также <a href="http://ipm.ifmo.ru/wp-content/uploads/2014/12/lib.zip">библиотека</a>, о которой идёт речь в заданиях.</p>
             <p><a href="http://ipm.ifmo.ru/testing/">Задания</a> к лабораторным по курсу &#171;Тестирование программного обеспечения&#187;.</p>
             <p>Задания для гр. 3108: <a href="http://ipm.ifmo.ru/wp-content/uploads/2014/12/lab_cache.pdf" target="_blank">№1</a>, <a href="http://ipm.ifmo.ru/wp-content/uploads/2014/12/lab-procinfo.pdf" target="_blank">№2</a>.</p>'

Page.create! name: 'graduate',
             path: '/pages/graduate',
             title: 'Выпускнику',
             html: '<p><strong>Информация для магистрантов и бакалавров</strong></p>
             <ol>
             <li>Предлагаемые <a href="https://docs.google.com/document/d/1GhUE0leTaJR59AZzAHG2tf-OjxFiBR7m5DCcCIZolww/pub" target="_blank">направления исследований</a> на случай, если темы нет.</li>
             <li><a href="https://docs.google.com/forms/d/1R1txeZKDpT4or17Bf30WaW51_22KzhrwWteTO0rkW0g/viewform" target="_blank">Форма </a>для отправки информации о выбранном направлении.</li>
             <li>Также предлагаются ещё варианты тем:
             <ul>
             <li>от Ковригиной Любови Юрьевны:
             <ul>
             <li>Разработка и тестирование методов извлечения формальных грамматик (алгоритмы обучения без учителя), 1-2 человека.</li>
             <li>Разработка методов формирования шаблонов в задачах извлечения фактов (regular expression learning), 1-2 человека.</li>
             </ul>
             </li>
             <li>от Колчин Максима Александровича:
             <ul>
             <li>Разработка мобильного приложения под Android для каталога продуктов питания FOODpedia (http://foodpedia.tk/), 1 человек</li>
             <li>Разработка веб интерфейса каталога продуктов питания FOODpedia с использованием технологий Linked Data, 1 человек</li>
             <li>Исследование и разработка метода (полу-)автоматического связывания данных FOODpedia с Wikidata (https://www.wikidata.org), 1 человек</li>
             </ul>
             </li>
             </ul>
             </li>
             <li>В иных других случаях в форме указать информацию об отсутствии темы и(или) руководителя, можете перечислить в поле для ввода текста интересы.</li>
             </ol>'

Page.create! name: 'history',
             path: '/pages/history',
             title: 'История',
             html: '<h4>История кафедры</h4>
             <p>Кафедра Прикладной Математики (ПМ), в дальнейшем Информатики и Прикладной Математики (ИПМ), организована в 1975 г. путём выделения части сотрудников из коллектива кафедры вычислительной техники для обеспечения обучения основам программирования для всех специальностей ЛИТМО. Одновременно кафедра сохранила за собой ряд специальных курсов: &#171;Основы дискретной математики&#187;, &#171;Теория вероятностей&#187;, &#171;Теория булевых функций и арифметические и логические основы ЭВМ&#187;, &#171;Основы САПР и специализированные базы данных&#187;, &#171;Диагностика и контроль ЭВМ&#187; и ряд других. Научное направление кафедры определилось как системы автоматизации проектирования в области контроля и диагностики логических схем ЭВМ. Для обеспечения учебного процесса и выполнения НИР в интересах министерств оборонного профиля (МОМ, МРП, МАП и ряда других) были приобретены за счет Х/Д тем следующие вычислительные машины: Минск-32, ЕС-1022, М-4030, ЕС-1033 и ЕС-1045, что позволило создать общеинститутский ВЦ, в котором проходили подготовку будущие специалисты и преподаватели в области программирования и вычислительной техники.</p>
             <p>Научное направление кафедры состояло в разработке регулярных методов проектирования тестов для логических схем ЭВМ на основе аппарата исчисления кубических комплексов. В результате выполнения ряда НИР были созданы САПР тестов для плат бортовых ЦВМ, стендовое оборудование для контроля, диагностики и наладки цифровых схем в виде двухслойных и многослойных плат ЭВМ. Сотрудничество с академическими организациями в участии в ежегодных школах-семинарах по технической диагностике, проводимых под руководством члена-корреспондента АН СССР Пархоменко П.П. (ИПУ г. Москва ) отраслевыми НИИ (НИЦЭВТ г. Москва ), конструкторскими бюро (КБЭ г. Харьков) и промышленными предприятиями (НПО ВТ г. Минск) позволило интегрировать научные исследования с последующим внедрением результатов в производственные технологии и учебный процесс в единое целое.</p>
             <p>В результате научных исследований были подготовлены кадры высшей квалификации: были подготовлены и защищены 5 докторских и несколько десятков кандидатских диссертаций. После защиты сотрудники НИЧ нашего института, как правило, переходили на преподавательскую работу. В частности, по кафедре ИПМ защитили диссертации и стали преподавателями: Шипилов П.А., Голованевский Г.Л., Блохин В.Н., Усвятский А.Е., Звягин В.Ф., Голыничев В.Н., Щупак Ю.А., Кукушкин Б.А., Раков С.В., Слоев Б.А., Павловская Т.А., Денисова Э.В. и ряд других. </p>
             <p>Кафедра занимается разработкой теоретических основ программирования в области моделирования, верификации, тестирования и диагностики вычислительных процессов программ. Вычислительные процессы, порождаемые программами, представляются и описываются графо-аналитическими моделями (ГАМ) в виде множества вершин и дуг связи между ними. ГАМ строится на основе концептуальной двухконтурной итерационно-рекурсивной модели (IRM), позволяющей описывать как ациклические, так и циклические вычислительные процессы.</p>
             <p>Математическое описание ГАМ строится в виде кубических покрытий с использованием алгебро-топологического аппарата исчисления кубических комплексов. При построении кубических покрытий вычислительный процесс декомпозируется на множество параллельных структур с любым уровнем вложенности их друг в друга. Переход от программ к вычислительным процессам позволяет решать задачи проектирования программного продукта через верификацию в общем виде, т.е. без учета конкретных особенностей языков программирования, операционных систем и процессоров, которые могут быть как реальными, так и виртуальными.</p>
             <p>Разрабатываемые методы являются детерминированными и являются составной частью любой технологии проектирования программного продукта. На основе разрабатываемых методов кафедра планирует создание учебно-исследовательской системы (УИС) в виде САПР, позволяющей унифицировать лабораторный практикум путем создания единой базы знаний и базы данных, повысить объективность и качество оценки знаний студентов, повысить производительность работы преподавателей.</p>'

Page.create! name: 'staff',
             path: '/pages/staff',
             title: 'Сотрудники',
             html: '<p><em>Муромцев Дмитрий Ильич, к.т.н., доцент, <strong>зав. кафедрой</strong></em><br />
             Дёмин Анатолий Владимирович д.т.н., профессор<br />
             Евгеньева Елена Леонидовна, тьютор<br />
             Емельянов Юрий Владимирович, тьютор<br />
             Жукова Наталия Александровна, к.т.н., доцент<br />
             Зыков Анатолий Геннадьевич, к.т.н., тьютор<br />
             Калёнова Ольга Вячеславовна, инженер<br />
             Ковригина Любовь Юрьевна, инженер<br />
             Колчин Максим Александрович, ассистент<br />
             Кореньков Юрий Дмитриевич, ассистент<br />
             Кураш Ольга Александровна, заведующая лабораторией<br />
             Кучер Алексей Владимирович, к.т.н., тьютор<br />
             Лабода Юрий Александрович, тьютор<br />
             Лаздин Артур Вячеславович, к.т.н., доцент, зам. зав. кафедрой<br />
             Логинов Иван Павлович, ассистент<br />
             Немолочнов Олег Фомич, д.т.н., профессор<br />
             Павлов Дмитрий Сергеевич, тьютор<br />
             Перл Иван Андреевич, к.т.н., доцент<br />
             Петрова Мария Максимовна, ассистент<br />
             Прокопенко Антон Юрьевич, старший преподаватель<br />
             Радченко Ирина Алексеевна, к.т.н. доцент<br />
             Раков Сергей Валентинович, к.т.н., тьютор<br />
             Рудникова Тамара Владимировна, тьютор<br />
             Симоненко Зинаида Григорьевна, к.т.н., доцент<br />
             Товстига Джордж, PhD технические науки, профессор-исследователь<br />
             Трофимов Валерий Владимирович, д.т.н., профессор<br />
             Ходырев Иван Александрович, ассистент</p>'

Page.create! name: 'contacts',
             path: '/pages/contacts',
             title: 'Контакты',
             html: '<h4>Контактная информация</h4>
             <p><b>Адрес:</b> 197101, г. Санкт-Петербург, Кронверкский проспект, д.49.<br />
             <b>Телефон кафедры:</b> 233-46-90</p>'
