El flujo cronológico típico para la autenticación con Devise y las rutas que has definido en tu archivo de rutas (config/routes.rb) sería algo así:

Registrar un nuevo usuario (signup):

Realizar una solicitud GET a http://localhost:4000/signup en Postman para obtener el formulario de registro.
Enviar el formulario de registro:



Realizar una solicitud POST a http://localhost:4000/signup en Postman con los datos del usuario para crear una cuenta.
Iniciar sesión (login):



Realizar una solicitud POST a http://localhost:4000/login en Postman con las credenciales del usuario para iniciar sesión.
Obtener información del usuario actual (current_user):



Realizar una solicitud GET a http://localhost:4000/current_user en Postman para obtener la información del usuario actualmente autenticado. Esta ruta probablemente esté protegida, por lo que la solicitud debe incluir el token de autenticación en el encabezado.
Cerrar sesión (logout):



Realizar una solicitud DELETE a http://localhost:4000/logout en Postman para cerrar la sesión del usuario actual.
