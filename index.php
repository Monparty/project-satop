<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="public/css/main.css">
<link rel="icon" type="image/x-icon" href="public/imgs/logosatop.png">
<title>Satop travelers Guesthouse</title>
<style>
    .lds-spinner {
        color: official;
        display: inline-block;
        width: 60px;
        height: 60px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

    .lds-spinner div {
        transform-origin: 40px 40px;
        animation: lds-spinner 1.2s linear infinite;
    }

    .lds-spinner div:after {
        content: " ";
        display: block;
        position: absolute;
        top: 3px;
        left: 37px;
        width: 6px;
        height: 18px;
        border-radius: 20%;
        background: var(--blue);
    }

    .lds-spinner div:nth-child(1) {
        transform: rotate(0deg);
        animation-delay: -1.1s;
    }

    .lds-spinner div:nth-child(2) {
        transform: rotate(30deg);
        animation-delay: -1s;
    }

    .lds-spinner div:nth-child(3) {
        transform: rotate(60deg);
        animation-delay: -0.9s;
    }

    .lds-spinner div:nth-child(4) {
        transform: rotate(90deg);
        animation-delay: -0.8s;
    }

    .lds-spinner div:nth-child(5) {
        transform: rotate(120deg);
        animation-delay: -0.7s;
    }

    .lds-spinner div:nth-child(6) {
        transform: rotate(150deg);
        animation-delay: -0.6s;
    }

    .lds-spinner div:nth-child(7) {
        transform: rotate(180deg);
        animation-delay: -0.5s;
    }

    .lds-spinner div:nth-child(8) {
        transform: rotate(210deg);
        animation-delay: -0.4s;
    }

    .lds-spinner div:nth-child(9) {
        transform: rotate(240deg);
        animation-delay: -0.3s;
    }

    .lds-spinner div:nth-child(10) {
        transform: rotate(270deg);
        animation-delay: -0.2s;
    }

    .lds-spinner div:nth-child(11) {
        transform: rotate(300deg);
        animation-delay: -0.1s;
    }

    .lds-spinner div:nth-child(12) {
        transform: rotate(330deg);
        animation-delay: 0s;
    }

    .fadePage {
        animation-name: fade;
        animation-duration: 2s;
    }

    @keyframes lds-spinner {
        0% {
            opacity: 1;
        }

        100% {
            opacity: 0;
        }
    }

    @keyframes fade {
        from { opacity: 0;}
        to { opacity: 1;}
    }
</style>
</head>
<body onload="loadActive()" class="fadePage">
    <div class="lds-spinner" id="loader">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
<script>
function linkPage() {
    window.location.href = 'src/admin/';
}

function loadActive() {
    setTimeout(linkPage, 1500)
}
</script>
</body>
</html>