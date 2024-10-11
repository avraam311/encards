from aiogram.utils.formatting import Bold, as_marked_section


categories = ["Аудирование", "Говорение", "Чтение", "Письмо", "Спец. пакет"]

sub_categories = {"Фильмы/Сериалы": 1,
                  "Смотреть тут": 1,
                  "Вопросы для говорения": 2,
                  "Топики для чтения": 3,
                  "Книги для чтения": 3,
                  "Вопросы для письма": 4,
                  "Мемы": 5,
                  "Мотивация": 5,
                  "Грамматика": 5,
                  "Слэнг": 5,
                  "Субтитры к фильмам": 5,
                  "Тесты": 5,
                  }

description_for_info_pages = {
    "main": "Ассаляму 1аляйкум, Добро пожаловать!🤝",
    "read!": "Обязательно для прочтения для всех!❗\n\n"
             "Изучение английского языка без надобности в этом в мирских делах и без пользы "
             "(то есть изучение языка просто так, чтобы понимать сериалы, потому что нравится их культура и т.д.) "
             "является запретным.❌\n\n"
             "Я, как владелец этого бота, полностью запрещаю использовать его в любых других целях.❌\n\n"
             "Этот бот и вся польза из него - мой аманат, следовательно любой, кто нарушает данный запрет,"
             "будет выступать против меня.🔥\n\n"
             "Не берите на меня и на себя этот грех!💟",
    "spec_pack": as_marked_section(
        Bold("Спец. пакет включает в себя:\n"),
        "Мемы",
        "Мотивация",
        "Грамматика",
        "Сленг",
        "Субтитры к фильмам",
        "Тесты",
        marker="✅ ",
    ).as_html(),
    "catalog": "Категории:\n",
    "sub_catalog": "Подкатегории:\n",
    "media": "Список медиа пуст💔\n",
}
