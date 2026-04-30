# 🧪 TESTING GUIDE - Mussa & Munira Phone Shop

## Quick Start - Local Testing

### Option 1: Using Batch File (Windows)
```bash
Double-click: start-server.bat
```
Then open: **http://localhost:8000**

### Option 2: Using PowerShell Script
```powershell
powershell -ExecutionPolicy Bypass -File start-server.ps1
```
Then open: **http://localhost:8000**

### Option 3: Manual Python
```bash
cd C:\Users\pc\Desktop\website
python -m http.server 8000
```
Then open: **http://localhost:8000**

### Option 4: Using Node.js
```bash
npm install -g serve
cd C:\Users\pc\Desktop\website
serve -l 3000
```
Then open: **http://localhost:3000**

### Option 5: VS Code Live Server
1. Install "Live Server" extension in VS Code
2. Open the website folder
3. Right-click `index.html`
4. Select "Open with Live Server"

---

## 📋 Testing Checklist

### 🏠 Home Page (index.html)
- [ ] Page loads without errors
- [ ] Hero banner displays correctly
- [ ] Hero image loads
- [ ] Promotional badges visible (Free Delivery, Warranty, SSL)
- [ ] Category icons display (Apple, Samsung, etc.)
- [ ] Featured products show (4 products)
- [ ] New products section shows
- [ ] Brand logos section displays
- [ ] WhatsApp button visible (bottom-right, green)
- [ ] Footer displays all sections
- [ ] Navigation menu responsive

**Expected:** 
- Load time < 3 seconds
- All elements visible
- Colors match design (Teal, Dark Blue)
- No console errors (F12)

---

### 📱 Products Listing Page (products.html)
- [ ] Page loads with products
- [ ] Search bar present & functional
- [ ] Search finds products (try "IPHONE 14 PRO")
- [ ] Filter sidebar displays
  - [ ] Price filters work (200k-500k, etc.)
  - [ ] Brand filters work (Apple, Samsung, etc.)
  - [ ] RAM filters work (4GB, 6GB, 8GB, etc.)
  - [ ] Storage filters work (128GB, 256GB, etc.)
- [ ] Sort dropdown works
  - [ ] Sort by popular
  - [ ] Sort by newest
  - [ ] Sort by price low-high
  - [ ] Sort by price high-low
- [ ] Product cards display correctly
- [ ] Product images load
- [ ] Pricing shows (old + new price)
- [ ] Discount badge shows
- [ ] Stock quantity displays
- [ ] "Add to Cart" button works
- [ ] "Compare" button present

**Test Scenario:**
1. Search for "IPHONE"
2. Filter by price 200k-500k
3. Filter by brand Samsung
4. Sort by price low-high
5. Verify only matching products show

---

### 🛍️ Product Detail Page (product-detail.html)
- [ ] Page loads correctly
- [ ] Main product image displays
- [ ] Thumbnail images show (5-8 images)
- [ ] Clicking thumbnails changes main image
- [ ] Video section present
- [ ] Video player functional
- [ ] Product title displays
- [ ] Old price + new price show
- [ ] Discount percentage shows
- [ ] Stock quantity displays
- [ ] Rating shows (5 stars + review count)
- [ ] Quantity selector works (+/- buttons)
- [ ] "Add to Cart" button works
- [ ] "Compare" button present

**Specifications Table shows:**
- [ ] Processor
- [ ] RAM
- [ ] Storage
- [ ] Camera
- [ ] Battery
- [ ] Display

**Additional Sections:**
- [ ] Payment info (Tigo Pesa numbers)
- [ ] Delivery info (costs per region)
- [ ] Customer reviews section
- [ ] Return policy section

---

### 🛒 Checkout Page (checkout.html)
#### Step 1: Cart
- [ ] Checkout steps progress bar shows (1/4)
- [ ] Products in cart display with:
  - [ ] Product image
  - [ ] Product name
  - [ ] Specs (RAM/Storage)
  - [ ] Quantity
  - [ ] Price calculation
- [ ] Cart summary shows:
  - [ ] Sub Total
  - [ ] Delivery cost
  - [ ] Total amount
- [ ] "Next to Address" button works
- [ ] Empty cart message if no items

#### Step 2: Address
- [ ] Step indicator shows (2/4)
- [ ] Form fields present:
  - [ ] Full Name
  - [ ] Phone number
  - [ ] Email address
  - [ ] City dropdown (Dar, Arusha, Mbeya, Zanzibar, Moshi)
  - [ ] Full Address textarea
- [ ] Guest checkout checkbox present & checked
- [ ] Form validation works (required fields)
- [ ] City selection updates delivery cost
- [ ] Previous/Next buttons work

#### Step 3: Payment
- [ ] Step indicator shows (3/4)
- [ ] Payment method options show:
  - [ ] Tigo Pesa 0772165345
  - [ ] Tigo Pesa 0651723082
  - [ ] DPO/Selcom
- [ ] Payment summary recalculates
- [ ] Instructions for payment display
- [ ] Previous/Next buttons work

#### Step 4: Completion
- [ ] Step indicator shows (4/4) with checkmark
- [ ] Success message displays
- [ ] Order details show:
  - [ ] Order number
  - [ ] Date
  - [ ] Total amount
  - [ ] Delivery location
- [ ] Next steps instructions display
- [ ] "Back to Home" button works

---

### ℹ️ About Page (about.html)
- [ ] Title displays
- [ ] About image loads (if present)
- [ ] Team section shows
- [ ] Team member cards display
- [ ] Benefits grid shows all 6 benefits
- [ ] Testimonials section displays
- [ ] Links work
- [ ] Mobile responsive

---

### 📞 Contact Page (contact.html)
- [ ] Contact info section displays:
  - [ ] Phone number (clickable)
  - [ ] WhatsApp link works
  - [ ] Email address
  - [ ] Location info
  - [ ] Business hours
- [ ] Contact form present:
  - [ ] Name field
  - [ ] Phone field
  - [ ] Email field
  - [ ] Subject dropdown
  - [ ] Message textarea
  - [ ] Submit button
- [ ] Google Map displays
- [ ] FAQ section shows all questions
- [ ] All links functional

---

### 🎯 Navigation & Responsiveness
- [ ] All nav links work (Home, Products, About, Contact)
- [ ] Logo links to home
- [ ] Cart icon shows item count
- [ ] Search bar accessible on all pages
- [ ] WhatsApp button on all pages
- [ ] Hamburger menu appears on mobile (< 768px)
- [ ] Hamburger menu toggles nav
- [ ] Footer visible on all pages

**Mobile Testing (320px, 480px, 768px):**
- [ ] Layout stacks vertically
- [ ] Text readable
- [ ] Buttons touchable (min 44px)
- [ ] Images responsive
- [ ] Navigation accessible

---

### 🔍 Console & Performance
- [ ] Open browser DevTools (F12)
- [ ] Console tab has no errors
- [ ] Network tab shows all files loading
- [ ] No 404 errors
- [ ] Load time < 3 seconds
- [ ] Lighthouse score 90+
  - [ ] Performance 90+
  - [ ] Accessibility 90+
  - [ ] Best Practices 90+
  - [ ] SEO 90+

**Performance Testing:**
1. Open DevTools > Lighthouse
2. Analyze mobile
3. Analyze desktop
4. Record results

---

### 🎨 Visual & Design
- [ ] Colors correct:
  - [ ] Teal/Green (#14B8A6)
  - [ ] Dark Blue (#1F2937)
  - [ ] White background
- [ ] Fonts correct:
  - [ ] Headings: Poppins
  - [ ] Body text: Inter
- [ ] Spacing & alignment good
- [ ] Images HD quality
- [ ] Icons display correctly
- [ ] Badges/badges display
- [ ] Animations smooth

---

### 💰 Functionality Tests
- [ ] Search works (try multiple keywords)
- [ ] Filters work independently
- [ ] Filters work together
- [ ] Sort works correctly
- [ ] Product comparison starts
- [ ] Add to cart persists (reload page)
- [ ] Remove from cart works
- [ ] Quantity update works
- [ ] Checkout flow completes
- [ ] Delivery cost calculates

---

### 📱 Cart Persistence
1. Add item to cart
2. Go to different page
3. Cart count should still show
4. Reload page (F5)
5. Cart items still there
6. Close browser
7. Open website again
8. Cart should persist (localStorage)

---

### 🔗 Link Testing
**Internal Links:**
- [ ] All navigation links
- [ ] All footer links
- [ ] All product links

**External Links:**
- [ ] WhatsApp button opens WhatsApp
- [ ] Facebook link opens Facebook
- [ ] Instagram link opens Instagram
- [ ] TikTok link opens TikTok
- [ ] All open in new tabs

**Phone/Email:**
- [ ] Phone number calls (on mobile)
- [ ] WhatsApp works
- [ ] Email link opens email client

---

### 🌐 Browser Testing
Test on:
- [ ] Chrome (latest)
- [ ] Firefox (latest)
- [ ] Safari (if Mac)
- [ ] Edge (latest)
- [ ] Mobile Chrome
- [ ] Mobile Safari

---

## 🐛 Common Issues & Fixes

### Images Not Loading
```
❌ Problem: Image paths showing "404 not found"
✅ Solution: 
   - Verify image files in assets/images/
   - Check file paths in HTML
   - Use relative paths: assets/images/photo.jpg
```

### Styles Not Applied
```
❌ Problem: Page looks unstyled
✅ Solution:
   - Check css/styles.css loads (F12 > Network)
   - Verify path: <link rel="stylesheet" href="css/styles.css">
   - Hard refresh: Ctrl+Shift+R
```

### JavaScript Not Working
```
❌ Problem: Buttons don't work, search fails
✅ Solution:
   - Check js/script.js loads (F12 > Network)
   - Check console for errors (F12 > Console)
   - Verify path: <script src="js/script.js"></script>
   - Hard refresh: Ctrl+Shift+R
```

### Cart Not Persisting
```
❌ Problem: Cart empties on page reload
✅ Solution:
   - Check browser allows localStorage
   - Check console for errors
   - Clear cache and retry
```

### Checkout Not Working
```
❌ Problem: Steps don't advance
✅ Solution:
   - Check all required fields filled
   - Check console for JavaScript errors
   - Verify form validation
```

---

## 📊 Performance Benchmarks

### Target Metrics
| Metric | Target | Actual |
|--------|--------|--------|
| Load Time | < 3s | |
| First Contentful Paint | < 1.5s | |
| Largest Contentful Paint | < 2.5s | |
| Time to Interactive | < 2.5s | |
| Lighthouse Performance | 90+ | |
| Lighthouse SEO | 100 | |

### How to Measure
1. Open Chrome DevTools (F12)
2. Go to Lighthouse tab
3. Click "Analyze page load"
4. Wait for results
5. Record scores
6. Make optimizations if needed

---

## 🚀 Ready for Production?

Before deploying, ensure:
- [ ] All tests pass
- [ ] No console errors
- [ ] Performance 90+
- [ ] Mobile responsive
- [ ] All links work
- [ ] Images optimized
- [ ] SSL ready
- [ ] Analytics IDs added
- [ ] Contact email working
- [ ] Payment numbers verified

---

## 📞 Support

If you encounter issues:
1. Check console (F12 > Console)
2. Check network tab (F12 > Network)
3. Look for 404 errors
4. Verify file paths
5. Try different browser
6. Clear cache & reload
7. Check QUICK_START.md

---

**Happy Testing! 🎉**

Contact: 0772165345
WhatsApp: 24/7
