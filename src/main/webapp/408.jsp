<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - 408 Request Timeout - Physics Game 🎮 </title>
  <link href="https://fonts.googleapis.com/css?family=VT323" rel="stylesheet"> <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="408-source/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div id="app">
  <div id="canvas_container"></div>
  <div id="info">
    <h1>408 Request Timeout <br><small>- The Game</small></h1>
    <p>Use the handle to rotate the hourglass. </p>
    <p>Watch out! It is broken. </p>
    <p>Don't let the pixe... sand get out.</p>
    <p>Remember - You have limited time.</p>
    <button @click="restartGame()" v-if="gameOver">Restart</button>
  </div>
  <div id="gui">Time limit:<br><span>{{ timeLimit }}s</span></div>
  <div class="range-slider">
    <p>Controler:</p>
    <input class="range-slider__range" v-model="currAngle" type="range" min="-25" max="25"/>
  </div>
  <div id="timeout" :class="gameOver ? 'shown' : ''">{{message}}</div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/matter-js/0.12.0/matter.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/p5.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/addons/p5.dom.min.js'></script><script  src="408-source/script.js"></script>

</body>
</html>
