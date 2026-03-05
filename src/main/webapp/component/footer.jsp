<!-- ================= PREMIUM MEDICAL FOOTER ================= -->

<style>

/* ================= PREMIUM MEDICAL FOOTER ================= */

.footer-medical {
    background: #0f1f38;
    color: #ffffff;
    padding: 60px 0 30px 0;
    position: relative;
}

.footer-medical::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 4px;
    background: linear-gradient(90deg, #00c6ff, #0072ff);
}

.footer-logo {
    font-size: 46px;
    font-weight: 600;
    margin-bottom: 25px;
}

.footer-desc {
    font-size: 14px;
    opacity: 0.85;
    line-height: 1.7;
}

.footer-heading {
    font-size: 18px;
    font-weight: 600;
    margin-bottom: 20px;
    position: relative;
}

.footer-heading::after {
    content: "";
    width: 40px;
    height: 2px;
    background: #00c6ff;
    position: absolute;
    left: 0;
    bottom: -8px;
}

.footer-links a {
    display: block;
    color: #cfd8e3;
    text-decoration: none;
    margin-bottom: 12px;
    font-size: 14px;
    transition: 0.3s ease;
}

.footer-links a:hover {
    color: #00c6ff;
    padding-left: 6px;
}

.footer-newsletter input {
    width: 100%;
    padding: 10px 15px;
    border-radius: 30px;
    border: none;
    margin-bottom: 10px;
    outline: none;
}

.footer-newsletter button {
    width: 100%;
    padding: 10px;
    border-radius: 30px;
    border: none;
    background: linear-gradient(90deg, #00c6ff, #0072ff);
    color: white;
    font-weight: 600;
}

.footer-contact p {
    font-size: 14px;
    margin-bottom: 8px;
    opacity: 0.85;
}

.footer-bottom {
    border-top: 1px solid rgba(255,255,255,0.1);
    margin-top: 50px;
    padding-top: 20px;
    text-align: center;
    font-size: 13px;
    opacity: 0.7;
}

</style>

<footer class="footer-medical">
    <div class="container">
        <div class="row">

            <div class="col-md-4 mb-4">
                <div class="footer-logo">Mediverse Health</div>
                <p class="footer-desc">
                    Delivering intelligent healthcare solutions with trusted
                    doctors, secure patient data, and seamless appointment
                    management.
                </p>
            </div>

            <div class="col-md-2 mb-4">
                <div class="footer-heading">Services</div>
                <div class="footer-links">
                    <a href="#">Book Appointment</a>
                    <a href="#">Find Doctors</a>
                    <a href="#">Lab Reports</a>
                    <a href="#">Pharmacy</a>
                </div>
            </div>

            <div class="col-md-2 mb-4">
                <div class="footer-heading">Support</div>
                <div class="footer-links">
                    <a href="#">Help Center</a>
                    <a href="#">Privacy Policy</a>
                    <a href="#">Terms</a>
                    <a href="#">Contact</a>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="footer-heading">Stay Updated</div>
                <div class="footer-newsletter">
                    <input type="email" placeholder="Enter your email">
                    <button>Subscribe Now</button>
                </div>

                <div class="footer-contact mt-3">
                    <p>📍 Smart Healthcare Avenue</p>
                    <p>📞 +91 98765 43210</p>
                    <p>✉ support@mediverse.com</p>
                </div>
            </div>

        </div>

        <div class="footer-bottom">
            © 2026 Mediverse Healthcare Portal
        </div>
    </div>
</footer>