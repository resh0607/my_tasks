
projects = Project.create!([
  {title: 'Семья'},
  {title: 'Работа'},
  {title: 'Прочее'}
])

todos = Todo.create!([
  {text: 'Купить молоко',                           project: projects[0]},
  {text: 'Заменить масло в двигателе до 23 апреля', project: projects[0]},
  {text: 'Отправить письмо бабушке',                project: projects[0], is_completed: true},
  {text: 'Заплатить за квартиру',                   project: projects[0]},
  {text: 'Забрать обувь из ремонта',                project: projects[0]},
  {text: 'Купить молоко',                           project: projects[0]},

  {text: 'Позвонить заказчику',                     project: projects[1], is_completed: true},
  {text: 'Отправить документы',                     project: projects[1], is_completed: true},
  {text: 'Заполнить отчет',                         project: projects[1]},

  {text: 'Позвонить другу',                         project: projects[2]},
  {text: 'Подготовиться к поездке',                 project: projects[2]}
])