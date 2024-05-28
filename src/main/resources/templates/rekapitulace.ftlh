[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>

<body>
<main>
    <h1>Registrace pro ${firstName} ${lastName} proběhla úspěšně</h1>
    <br/>

    <h1>Rekapitulace registrace</h1>

    <div class="full-width">
        <label for="firstName" class="name">Jméno: </label>
        <input readonly value="${firstName}"/>
    </div>

    <div class="full-width">
        <label for="lastName" class="name">Příjmení: </label>
        <input readonly value="${lastName}"/>
    </div>

    <div class="full-width">
        <label for="birthDate" class="name">Datum narození: </label>
        <input readonly value="${birthDate?date}"/>
    </div>

    <div class="full-width">
        <label for="gender" class="name">Pohlaví: </label>
        [#if gender == "1"]
            <input readonly value="Chlapec">
        [/#if]
        [#if gender == "2"]
            <input readonly value="Dívka">
        [/#if]
    </div>

    <div class="full-width">
        <label for="session" class="name">Turnus: </label>
        [#if session == "turnus-1"]
            <input readonly value="5. až 11. července"/>
        [/#if]
        [#if session == "turnus-2"]
            <input readonly value="12. až 18. července"/>
        [/#if]
        [#if session == "turnus-3"]
            <input readonly value="19. až 25. července"/>
        [/#if]
    </div>

    [#if parentEmail??]
        <div class="full-width">
            <label for="email" class="name">Email rodiče</label>
            <input readonly value="${parentEmail}"/>
        </div>
    [/#if]

    [#if parentPhone??]
        <div class="full-width">
            <label for="phone" class="name">Telefonní číslo rodiče: </label>
            <input readonly value="${parentPhone}">
        </div>
    [/#if]

    <p>Děkujeme za registraci na letní dětský tábor!</p>

</main>
</body>
</html>