from aiogram.utils.formatting import Bold, as_marked_section


categories = ["Слова", "Аудирование", "Говорение", "Чтение", "Письмо", "Спец. пакет"]

sub_categories = {"Фильмы/Сериалы": 2,
                  "Смотреть тут": 2,
                  "Вопросы для говорения": 3,
                  "Топики для чтения": 4,
                  "Книги для чтения": 4,
                  "Вопросы для письма": 5,
                  "Мемы": 6,
                  "Мотивация": 6,
                  "Грамматика": 6,
                  "Субтитры к фильмам": 6,
                  }

description_for_info_pages = {
    "main": "Добро пожаловать!",
    "read!": "Обязательно для прочтения для всех",
    "spec_pack": as_marked_section(
        Bold("Спец. пакет включает в себя:\n"),
        "Мемы",
        "Мотивация",
        "Грамматика",
        "Сленг",
        "Тесты",
        marker="✅ ",
    ).as_html(),
    "catalog": "Категории:\n",
    "sub_catalog": "Подкатегории:\n",
}
