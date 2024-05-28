[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">

<head>
    [#include '/_common/head.ftlh']
</head>
<body>
<main>
    <h1>Registrace na letní dětský tábor</h1>
    <form class="registration" action="/" method="post">
        [@spring.bind "form"/]

        <div class="full-width">
            <label for="firstName" class="name">Jméno: </label>
            [@spring.formInput path="form.firstName"/]
            <div class="error">[@spring.showErrors "form.firstName"/]</div>
        </div>

        <div class="full-width">
            <label for="lastName">Příjmení: </label>
            [@spring.formInput path="form.lastName"/]
            <div class="error">[@spring.showErrors "form.lastName"/]</div>
        </div>

        <div class="full-width">
            <label for="birthDate">Datum narození: </label>
            <input type="date" name="birthDate" required>
            [@spring.formHiddenInput path="form.birthDate"/]
            <div class="error">[@spring.showErrors "form.birthDate"/]</div>
        </div>

        <div class="full-width">
            <label for="gender">Chlapec/Dívka: </label>
            [@spring.formSingleSelect path="form.gender" options={
            "": "",
            "1": "Chlapec",
            "2": "Dívka"
            } /]
            <div class="error">[@spring.showErrors "form.gender"/]</div>
        </div>

        <div class="full-width">
            <label for="session">Turnus: </label>
            [@spring.formSingleSelect path="form.session" options={
            "": "",
            "turnus-1": "5. až 11. července",
            "turnus-2": "12. až 18. července",
            "turnus-3": "19. až 25. července"
            } /]
            <div class="error">[@spring.showErrors "form.session"/]</div>
        </div>

        <div class="full-width">
            <label for="email">Email na rodiče: </label>
            [@spring.formInput path="form.parentEmail"/]
            <div class="error">[@spring.showErrors "form.parentEmail"/]</div>
        </div>

        <div class="full-width">
            <label for="phone">Telefon na rodiče</label>
            [@spring.formInput path="form.parentPhone"/]
            <div class="error">[@spring.showErrors "form.parentPhone"/]</div>
        </div>

        <input type="submit" value="Register">
    </form>
</main>
</body>
</html>