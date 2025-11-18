<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Изучение космоса и планет</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #0b0b2d;
            color: #fff;
            overflow-x: hidden;
            line-height: 1.6;
        }

        .stars {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .star {
            position: absolute;
            background-color: #fff;
            border-radius: 50%;
            animation: twinkle 5s infinite;
        }

        @keyframes twinkle {
            0%, 100% { opacity: 0.2; }
            50% { opacity: 1; }
        }

        header {
            text-align: center;
            padding: 100px 20px 50px;
            background: linear-gradient(to bottom, rgba(11, 11, 45, 0.8), rgba(11, 11, 45, 0));
        }

        h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 3px;
            text-shadow: 0 0 10px #4d79ff, 0 0 20px #4d79ff;
        }

        .subtitle {
            font-size: 1.2rem;
            max-width: 600px;
            margin: 0 auto 30px;
            color: #a0a0e0;
        }

        .cta-button {
            display: inline-block;
            padding: 12px 30px;
            background: linear-gradient(45deg, #4d79ff, #8a2be2);
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 0 15px rgba(77, 121, 255, 0.5);
        }

        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 0 20px rgba(77, 121, 255, 0.8);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        section {
            padding: 80px 0;
        }

        h2 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 50px;
            color: #4d79ff;
            position: relative;
        }

        h2::after {
            content: '';
            display: block;
            width: 100px;
            height: 3px;
            background: linear-gradient(to right, #4d79ff, #8a2be2);
            margin: 15px auto;
        }

        .planets-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }

        .planet-card {
            background: rgba(30, 30, 70, 0.7);
            border-radius: 15px;
            padding: 25px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(77, 121, 255, 0.3);
        }

        .planet-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(77, 121, 255, 0.3);
        }

        .planet-icon {
            width: 100px;
            height: 100px;
            margin: 0 auto 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
        }

        .planet-card h3 {
            margin-bottom: 15px;
            font-size: 1.5rem;
        }

        .planet-card p {
            color: #a0a0e0;
            font-size: 0.9rem;
        }

        .solar-system {
            position: relative;
            height: 500px;
            margin: 100px auto;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .sun {
            position: absolute;
            width: 80px;
            height: 80px;
            background: radial-gradient(circle, #ffd700, #ff8c00);
            border-radius: 50%;
            box-shadow: 0 0 50px #ff8c00;
            z-index: 10;
        }

        .orbit {
            position: absolute;
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .planet {
            position: absolute;
            border-radius: 50%;
            transform-origin: center;
        }

        .mercury-orbit { width: 150px; height: 150px; }
        .venus-orbit { width: 200px; height: 200px; }
        .earth-orbit { width: 250px; height: 250px; }
        .mars-orbit { width: 300px; height: 300px; }
        .jupiter-orbit { width: 400px; height: 400px; }
        .saturn-orbit { width: 500px; height: 500px; }
        .uranus-orbit { width: 580px; height: 580px; }
        .neptune-orbit { width: 650px; height: 650px; }

        .mercury { width: 10px; height: 10px; background: #a9a9a9; }
        .venus { width: 15px; height: 15px; background: #e39e54; }
        .earth { width: 16px; height: 16px; background: #6b93d6; }
        .mars { width: 12px; height: 12px; background: #c1440e; }
        .jupiter { width: 30px; height: 30px; background: #c9a66b; }
        .saturn { width: 28px; height: 28px; background: #e4d191; }
        .uranus { width: 20px; height: 20px; background: #b8e2f2; }
        .neptune { width: 20px; height: 20px; background: #5b5ddf; }

        .facts {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }

        .fact-card {
            background: rgba(30, 30, 70, 0.7);
            border-radius: 15px;
            padding: 25px;
            border-left: 4px solid #4d79ff;
        }

        .fact-card h3 {
            margin-bottom: 15px;
            color: #4d79ff;
        }

        footer {
            text-align: center;
            padding: 30px 0;
            background: rgba(10, 10, 30, 0.9);
            margin-top: 50px;
        }

        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background: linear-gradient(135deg, #1a1a4a, #0b0b2d);
            width: 90%;
            max-width: 600px;
            border-radius: 15px;
            padding: 30px;
            position: relative;
            border: 1px solid #4d79ff;
            box-shadow: 0 0 30px rgba(77, 121, 255, 0.5);
        }

        .close-modal {
            position: absolute;
            top: 15px;
            right: 15px;
            font-size: 1.5rem;
            cursor: pointer;
            color: #a0a0e0;
        }

        .planet-details {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .planet-details img {
            width: 150px;
            height: 150px;
            margin-bottom: 20px;
        }

        .planet-info {
            margin-top: 20px;
        }

        .planet-info p {
            margin-bottom: 10px;
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 2.5rem;
            }
            
            .solar-system {
                height: 400px;
            }
            
            .mercury-orbit { width: 120px; height: 120px; }
            .venus-orbit { width: 160px; height: 160px; }
            .earth-orbit { width: 200px; height: 200px; }
            .mars-orbit { width: 240px; height: 240px; }
            .jupiter-orbit { width: 320px; height: 320px; }
            .saturn-orbit { width: 380px; height: 380px; }
            .uranus-orbit { width: 440px; height: 440px; }
            .neptune-orbit { width: 500px; height: 500px; }
        }
    </style>
</head>
<body>
    <!-- Фон со звездами -->
    <div class="stars" id="stars"></div>

    <!-- Заголовок -->
    <header>
        <div class="container">
            <h1>Изучение космоса</h1>
            <p class="subtitle">Откройте для себя тайны Вселенной, исследуйте далекие галактики и узнайте больше о планетах нашей Солнечной системы</p>
            <a href="#planets" class="cta-button">Начать исследование</a>
        </div>
    </header>

    <!-- Секция с планетами -->
    <section id="planets">
        <div class="container">
            <h2>Планеты Солнечной системы</h2>
            <div class="planets-grid">
                <div class="planet-card" data-planet="mercury">
                    <div class="planet-icon" style="background: radial-gradient(circle, #a9a9a9, #696969);">☿</div>
                    <h3>Меркурий</h3>
                    <p>Ближайшая к Солнцу планета, самая маленькая в Солнечной системе</p>
                </div>
                <div class="planet-card" data-planet="venus">
                    <div class="planet-icon" style="background: radial-gradient(circle, #e39e54, #b87333);">♀</div>
                    <h3>Венера</h3>
                    <p>Вторая планета от Солнца, самая горячая планета в системе</p>
                </div>
                <div class="planet-card" data-planet="earth">
                    <div class="planet-icon" style="background: radial-gradient(circle, #6b93d6, #2e5aa7);">♁</div>
                    <h3>Земля</h3>
                    <p>Третья планета от Солнца, единственная известная планета с жизнью</p>
                </div>
                <div class="planet-card" data-planet="mars">
                    <div class="planet-icon" style="background: radial-gradient(circle, #c1440e, #8b2c02);">♂</div>
                    <h3>Марс</h3>
                    <p>Четвертая планета от Солнца, известная как "Красная планета"</p>
                </div>
                <div class="planet-card" data-planet="jupiter">
                    <div class="planet-icon" style="background: radial-gradient(circle, #c9a66b, #a8874c);">♃</div>
                    <h3>Юпитер</h3>
                    <p>Пятая планета от Солнца, самая большая планета в системе</p>
                </div>
                <div class="planet-card" data-planet="saturn">
                    <div class="planet-icon" style="background: radial-gradient(circle, #e4d191, #d4c181);">♄</div>
                    <h3>Сатурн</h3>
                    <p>Шестая планета от Солнца, известная своими кольцами</p>
                </div>
                <div class="planet-card" data-planet="uranus">
                    <div class="planet-icon" style="background: radial-gradient(circle, #b8e2f2, #7fc5e2);">♅</div>
                    <h3>Уран</h3>
                    <p>Седьмая планета от Солнца, ледяной гигант</p>
                </div>
                <div class="planet-card" data-planet="neptune">
                    <div class="planet-icon" style="background: radial-gradient(circle, #5b5ddf, #3a3cb3);">♆</div>
                    <h3>Нептун</h3>
                    <p>Восьмая планета от Солнца, самый ветреный мир в системе</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Солнечная система -->
    <section>
        <div class="container">
            <h2>Солнечная система</h2>
            <div class="solar-system">
                <div class="sun"></div>
                <div class="orbit mercury-orbit">
                    <div class="planet mercury"></div>
                </div>
                <div class="orbit venus-orbit">
                    <div class="planet venus"></div>
                </div>
                <div class="orbit earth-orbit">
                    <div class="planet earth"></div>
                </div>
                <div class="orbit mars-orbit">
                    <div class="planet mars"></div>
                </div>
                <div class="orbit jupiter-orbit">
                    <div class="planet jupiter"></div>
                </div>
                <div class="orbit saturn-orbit">
                    <div class="planet saturn"></div>
                </div>
                <div class="orbit uranus-orbit">
                    <div class="planet uranus"></div>
                </div>
                <div class="orbit neptune-orbit">
                    <div class="planet neptune"></div>
                </div>
            </div>
        </div>
    </section>

    <!-- Интересные факты -->
    <section>
        <div class="container">
            <h2>Интересные факты о космосе</h2>
            <div class="facts">
                <div class="fact-card">
                    <h3>Бесконечность Вселенной</h3>
                    <p>Наблюдаемая Вселенная имеет диаметр около 93 миллиардов световых лет и содержит более 100 миллиардов галактик.</p>
                </div>
                <div class="fact-card">
                    <h3>Черные дыры</h3>
                    <p>Черные дыры обладают такой сильной гравитацией, что даже свет не может покинуть их пределы.</p>
                </div>
                <div class="fact-card">
                    <h3>Темная материя</h3>
                    <p>Около 27% Вселенной состоит из темной материи, которая не испускает электромагнитного излучения.</p>
                </div>
                <div class="fact-card">
                    <h3>Время в космосе</h3>
                    <p>Из-за эффектов теории относительности время на МКС течет немного медленнее, чем на Земле.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Подвал -->
    <footer>
        <div class="container">
            <p>© 2023 Изучение космоса и планет. Все права защищены.</p>
        </div>
    </footer>

    <!-- Модальное окно с информацией о планете -->
    <div class="modal" id="planetModal">
        <div class="modal-content">
            <span class="close-modal">&times;</span>
            <div class="planet-details" id="planetDetails">
                <!-- Содержимое будет заполнено JavaScript -->
            </div>
        </div>
    </div>

    <script>
        // Создание звездного фона
        function createStars() {
            const starsContainer = document.getElementById('stars');
            const starsCount = 200;
            
            for (let i = 0; i < starsCount; i++) {
                const star = document.createElement('div');
                star.classList.add('star');
                
                // Случайные позиции и размеры
                const size = Math.random() * 3;
                const posX = Math.random() * 100;
                const posY = Math.random() * 100;
                const delay = Math.random() * 5;
                
                star.style.width = `${size}px`;
                star.style.height = `${size}px`;
                star.style.left = `${posX}%`;
                star.style.top = `${posY}%`;
                star.style.animationDelay = `${delay}s`;
                
                starsContainer.appendChild(star);
            }
        }

        // Анимация планет
        function animatePlanets() {
            const planets = document.querySelectorAll('.planet');
            const speeds = [0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1];
            
            planets.forEach((planet, index) => {
                let angle = 0;
                
                function rotate() {
                    angle += speeds[index];
                    const radius = planet.parentElement.offsetWidth / 2;
                    const x = Math.cos(angle * Math.PI / 180) * radius;
                    const y = Math.sin(angle * Math.PI / 180) * radius;
                    
                    planet.style.transform = `translate(${x}px, ${y}px)`;
                    
                    requestAnimationFrame(rotate);
                }
                
                rotate();
            });
        }

        // Данные о планетах
        const planetData = {
            mercury: {
                name: "Меркурий",
                description: "Меркурий - самая маленькая планета в Солнечной системе и ближайшая к Солнцу. Из-за близости к Солнцу температура на поверхности Меркурия колеблется от -180°C ночью до +430°C днем.",
                facts: [
                    "Диаметр: 4 879 км",
                    "Расстояние от Солнца: 57,9 млн км",
                    "Период обращения: 88 земных дней",
                    "Спутники: нет"
                ]
            },
            venus: {
                name: "Венера",
                description: "Венера - вторая планета от Солнца, часто называемая 'сестрой Земли' из-за схожего размера и массы. Однако условия на Венере крайне hostile - плотная атмосфера из углекислого газа создает сильный парниковый эффект.",
                facts: [
                    "Диаметр: 12 104 км",
                    "Расстояние от Солнца: 108,2 млн км",
                    "Период обращения: 225 земных дней",
                    "Спутники: нет"
                ]
            },
            earth: {
                name: "Земля",
                description: "Земля - третья планета от Солнца и единственное известное место во Вселенной, где существует жизнь. Около 71% поверхности Земли покрыто водой, что делает ее уникальной среди планет Солнечной системы.",
                facts: [
                    "Диаметр: 12 742 км",
                    "Расстояние от Солнца: 149,6 млн км",
                    "Период обращения: 365,25 дней",
                    "Спутники: Луна"
                ]
            },
            mars: {
                name: "Марс",
                description: "Марс - четвертая планета от Солнца, известная как 'Красная планета' из-за оксида железа на ее поверхности. Марс имеет самую высокую гору в Солнечной системе - Олимп, высотой 21 км.",
                facts: [
                    "Диаметр: 6 779 км",
                    "Расстояние от Солнца: 227,9 млн км",
                    "Период обращения: 687 земных дней",
                    "Спутники: Фобос и Деймос"
                ]
            },
            jupiter: {
                name: "Юпитер",
                description: "Юпитер - пятая планета от Солнца и самая большая в Солнечной системе. Это газовый гигант, состоящий в основном из водорода и гелия. Юпитер известен своим Большим Красным Пятном - гигантским штормом, бушующим сотни лет.",
                facts: [
                    "Диаметр: 139 820 км",
                    "Расстояние от Солнца: 778,5 млн км",
                    "Период обращения: 11,9 земных лет",
                    "Спутники: 79 известных"
                ]
            },
            saturn: {
                name: "Сатурн",
                description: "Сатурн - шестая планета от Солнца, известная своими впечатляющими кольцами, состоящими из льда и камней. Как и Юпитер, Сатурн является газовым гигантом и имеет наименьшую плотность среди всех планет.",
                facts: [
                    "Диаметр: 116 460 км",
                    "Расстояние от Солнца: 1,43 млрд км",
                    "Период обращения: 29,5 земных лет",
                    "Спутники: 82 известных"
                ]
            },
            uranus: {
                name: "Уран",
                description: "Уран - седьмая планета от Солнца, ледяной гигант, открытый в 1781 году. Уран уникален тем, что вращается 'на боку' - его ось вращения почти параллельна плоскости орбиты.",
                facts: [
                    "Диаметр: 50 724 км",
                    "Расстояние от Солнца: 2,87 млрд км",
                    "Период обращения: 84 земных года",
                    "Спутники: 27 известных"
                ]
            },
            neptune: {
                name: "Нептун",
                description: "Нептун - восьмая и самая дальняя от Солнца планета. Это ледяной гигант с самыми сильными ветрами в Солнечной системе, достигающими скорости 2100 км/ч. Нептун был открыт математическими расчетами, а не наблюдениями.",
                facts: [
                    "Диаметр: 49 244 км",
                    "Расстояние от Солнца: 4,5 млрд км",
                    "Период обращения: 165 земных лет",
                    "Спутники: 14 известных"
                ]
            }
        };

        // Открытие модального окна с информацией о планете
        function setupPlanetModal() {
            const modal = document.getElementById('planetModal');
            const planetCards = document.querySelectorAll('.planet-card');
            const closeBtn = document.querySelector('.close-modal');
            const planetDetails = document.getElementById('planetDetails');
            
            planetCards.forEach(card => {
                card.addEventListener('click', function() {
                    const planet = this.getAttribute('data-planet');
                    const data = planetData[planet];
                    
                    planetDetails.innerHTML = `
                        <h2>${data.name}</h2>
                        <div class="planet-icon" style="background: radial-gradient(circle, ${getPlanetColor(planet)});">${getPlanetSymbol(planet)}</div>
                        <p>${data.description}</p>
                        <div class="planet-info">
                            <h3>Основные характеристики:</h3>
                            ${data.facts.map(fact => `<p>${fact}</p>`).join('')}
                        </div>
                    `;
                    
                    modal.style.display = 'flex';
                });
            });
            
            closeBtn.addEventListener('click', function() {
                modal.style.display = 'none';
            });
            
            window.addEventListener('click', function(event) {
                if (event.target === modal) {
                    modal.style.display = 'none';
                }
            });
        }

        // Вспомогательные функции для модального окна
        function getPlanetColor(planet) {
            const colors = {
                mercury: '#a9a9a9, #696969',
                venus: '#e39e54, #b87333',
                earth: '#6b93d6, #2e5aa7',
                mars: '#c1440e, #8b2c02',
                jupiter: '#c9a66b, #a8874c',
                saturn: '#e4d191, #d4c181',
                uranus: '#b8e2f2, #7fc5e2',
                neptune: '#5b5ddf, #3a3cb3'
            };
            return colors[planet];
        }

        function getPlanetSymbol(planet) {
            const symbols = {
                mercury: '☿',
                venus: '♀',
                earth: '♁',
                mars: '♂',
                jupiter: '♃',
                saturn: '♄',
                uranus: '♅',
                neptune: '♆'
            };
            return symbols[planet];
        }

        // Инициализация при загрузке страницы
        document.addEventListener('DOMContentLoaded', function() {
            createStars();
            animatePlanets();
            setupPlanetModal();
        });
    </script>
</body>
</html>
