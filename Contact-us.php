<!DOCTYPE html>
<html>
  <head>
    <!--========== CSS ==========-->
    <link rel="stylesheet" href="Contact-us.css" />

    <!--========== FAVICON ==========-->
    <link
      rel="apple-touch-icon"
      sizes="180x180"
      href="favicon/apple-touch-icon.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="32x32"
      href="favicon/favicon-32x32.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="16x16"
      href="favicon/favicon-16x16.png"
    />
    <link rel="manifest" href="favicon/site.webmanifest" /> 

    <!--========== Bootstrap CSS ==========-->

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <title>Apna Tasty Restaurant</title>
  </head>
  <body>
    <div class="container form-container" style="width: 500px">
      <form
        id="contactForm"
        method="post"
        onsubmit="emailSend(); reset(); return false;"
      >
        <div class="form-group">
          <label for="name">Your Name:</label>
          <input
            type="text"
            class="form-control"
            id="name"
            name="name"
            placeholder="e.g: John Doe"
            required
          />
        </div>
        <div class="form-group">
          <label for="email">Your Email:</label>
          <input
            type="email"
            class="form-control"
            id="email"
            name="email"
            placeholder="e.g: example@gmail.com"
            required
          />
          <small id="emailError" class="error-message d-none"
            >Please enter a valid email address.</small
          >
        </div>
        <div class="form-group">
          <label for="phone">Your Phone:</label>
          <input
            type="tel"
            class="form-control"
            id="phone"
            name="phone"
            placeholder="e.g: 987 6543 210"
            required
          />
          <small id="phoneError" class="error-message d-none"
            >Please enter a 10-digit phone number.</small
          >
        </div>
        <div class="form-group">
          <label for="message">Your Message:</label>
          <textarea
            class="form-control"
            id="message"
            name="message"
            rows="4"
            placeholder="Hey! Apna Tasty Restaurant... [your message]"
            required
          ></textarea>
        </div>
        <button type="submit" class="btn btn-success">Send Message</button>
      </form>
    </div>
    <!-- ========== SMTP GET DATA ON EMAIL   ========== -->
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <!-- ========== sweetalert (popup msg)  ========== -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- Add this script tag for validator.js -->
    <script src="https://cdn.jsdelivr.net/npm/validator@13.10.0"></script>
    <script src="Contact-us.js"></script>
  </body>
</html>