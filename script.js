// script.js

// Check if user is logged in
if (window.location.pathname.endsWith('shop.html')) {
    const loggedIn = localStorage.getItem('loggedIn');
    if (!loggedIn) {
        window.location.href = 'index.html';
    }
}

// Login form
const loginForm = document.getElementById('loginForm');
if (loginForm) {
    loginForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        const users = JSON.parse(localStorage.getItem('users') || '[]');
        const user = users.find(u => u.email === email && u.password === password);
        if (user) {
            localStorage.setItem('loggedIn', 'true');
            localStorage.setItem('currentUser', email);
            window.location.href = 'shop.html';
        } else {
            alert('Invalid credentials');
        }
    });
}

// Signup form
const signupForm = document.getElementById('signupForm');
if (signupForm) {
    signupForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        if (password !== confirmPassword) {
            alert('Passwords do not match');
            return;
        }
        const users = JSON.parse(localStorage.getItem('users') || '[]');
        if (users.find(u => u.email === email)) {
            alert('Email already exists');
            return;
        }
        users.push({ name, email, password });
        localStorage.setItem('users', JSON.stringify(users));
        alert('Account created! Please login.');
        window.location.href = 'index.html';
    });
}

// Logout
const logoutBtn = document.getElementById('logout');
if (logoutBtn) {
    logoutBtn.addEventListener('click', () => {
        localStorage.removeItem('loggedIn');
        localStorage.removeItem('currentUser');
        window.location.href = 'index.html';
    });
}

// Cart functionality
let cart = JSON.parse(localStorage.getItem('cart') || '[]');
const cartItems = document.getElementById('cartItems');
const totalEl = document.getElementById('total');

function updateCart() {
    cartItems.innerHTML = '';
    let total = 0;
    cart.forEach(item => {
        const li = document.createElement('li');
        li.textContent = `${item.name} - $${item.price}`;
        cartItems.appendChild(li);
        total += item.price;
    });
    totalEl.textContent = total;
    localStorage.setItem('cart', JSON.stringify(cart));
}

if (cartItems) {
    updateCart();
}

// Add to cart
const addToCartBtns = document.querySelectorAll('.add-to-cart');
addToCartBtns.forEach(btn => {
    btn.addEventListener('click', () => {
        const product = btn.parentElement;
        const name = product.querySelector('h3').textContent;
        const price = parseInt(product.querySelector('p').textContent.replace('$', ''));
        cart.push({ name, price });
        updateCart();
    });
});

// Checkout
const checkoutBtn = document.getElementById('checkout');
if (checkoutBtn) {
    checkoutBtn.addEventListener('click', () => {
        if (cart.length === 0) {
            alert('Cart is empty');
            return;
        }
        alert('Order placed! Please pick up at the store.');
        cart = [];
        updateCart();
    });
}