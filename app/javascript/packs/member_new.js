function on_blur() {
  let error_field = document.getElementById('error_message')
  let email = document.getElementById("member_email")

  if (email.value.length == 0)
    error_field.textContent = 'Please provide an email before submitting the form'
}

function on_keyup(){
  let error_field = document.getElementById('error_message')
  let email = document.getElementById("member_email")
  let submit_button = document.getElementById('commit')

  error_field.textContent = ''

  if (!/@/.test(email.value)){
    error_field.textContent = 'Please the email must have an @ character'
    submit_button.disabled = true
  }
  else
    submit_button.disabled = false
}

document.addEventListener('turbolinks:load', () => {
  const email_field = document.getElementById("member_email");

  email_field.addEventListener('keyup', (event) => {
    on_keyup()
  });

  email_field.addEventListener('blur', (event) => {
    on_blur()
  });
});
