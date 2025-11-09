<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://telegram.org/js/telegram-web-app.js"></script>
  <title>ANO Доставка</title>
  <style>
    body { font-family: Arial; margin: 0; padding: 20px; background: #f0f2f5; text-align: center; }
    h1 { color: #007bff; }
    .btn { padding: 16px; margin: 12px 0; background: #007bff; color: white; border: none; border-radius: 12px; font-size: 18px; width: 90%; }
    .card { background: white; padding: 20px; border-radius: 16px; margin: 15px 0; box-shadow: 0 4px 10px rgba(0,0,0,0.1); }
  </style>
</head>
<body>
  <h1>ANO Доставка Ачинск</h1>
  <div class="card">
    <button class="btn" onclick="order('еда')">Еда</button>
    <button class="btn" onclick="order('вещи')">Вещи</button>
    <button class="btn" onclick="order('халтура')">Халтура</button>
  </div>

  <script>
    Telegram.WebApp.ready();

    function order(type) {
      const data = { action: 'new_order', type: type };
      Telegram.WebApp.sendData(JSON.stringify(data));
      Telegram.WebApp.close();
    }
  </script>
</body>
</html>
