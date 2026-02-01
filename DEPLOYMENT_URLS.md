# 🌐 Bean Board Website Deployment Information

## 🎯 Your Live Website URL

**Frontend URL:** `https://beanboard-experience.preview.emergentagent.com`

This is your publicly accessible website link that you can share with anyone!

---

## 📍 Where URLs Are Configured

### 1. **Frontend Configuration**
**File:** `/app/frontend/.env`

```env
REACT_APP_BACKEND_URL=https://beanboard-experience.preview.emergentagent.com
WDS_SOCKET_PORT=443
ENABLE_HEALTH_CHECK=false
```

**What it means:**
- `REACT_APP_BACKEND_URL` - Your production backend API URL
- This is automatically set by Emergent deployment system
- Frontend uses this to make API calls

---

### 2. **Backend Configuration**
**File:** `/app/backend/.env`

```env
MONGO_URL="mongodb://localhost:27017"
DB_NAME="test_database"
CORS_ORIGINS="*"
```

**What it means:**
- Database connection string (internal)
- CORS settings for API access

---

## 🔧 How to Change/Update URLs

### ⚠️ Important Note:
**DO NOT manually edit the URLs in `.env` files!**

The URLs are automatically configured by Emergent's deployment system. If you change them manually, your website might break.

### If You Need to Update:

#### **For Swiggy/External Links (SAFE TO CHANGE):**
You can update these in the component files:

**Files to edit:**
1. `/app/frontend/src/components/Hero.jsx` - Line ~13
2. `/app/frontend/src/components/Contact.jsx` - Line ~7
3. `/app/frontend/src/components/Menu.jsx` - Line ~95

**Current Swiggy Dineout Link:**
```javascript
window.open('https://www.swiggy.com/dineout', '_blank');
```

**To change to your specific Swiggy page:**
```javascript
// Replace with your actual Bean Board Swiggy URL
window.open('https://www.swiggy.com/restaurants/bean-board-seetammadhara-vizag-12345', '_blank');
```

---

## 🔍 How to Find Your Specific Links

### For Swiggy Dineout:
1. Go to Swiggy.com
2. Search for "Bean Board Seetammadhara"
3. Copy the restaurant page URL
4. Replace in the component files above

### For Google Maps:
**File:** `/app/frontend/src/data/mockData.js` - Line ~11

```javascript
googleMapsLink: "https://maps.google.com/?q=17.741453,83.30474",
```

**To update:**
1. Search "Bean Board Seetammadhara" on Google Maps
2. Click "Share" → "Copy link"
3. Replace the URL in mockData.js

---

## 📱 Contact Information Updates

**File:** `/app/frontend/src/data/mockData.js`

Update these if needed:
```javascript
phone: "07382638620",
whatsapp: "917382638620",
swiggyLink: "https://www.swiggy.com/...",  // Your actual Swiggy page
```

---

## 🚀 Deployment Process

When you make changes:

1. **Edit the files** (component files, mockData.js, etc.)
2. **Save your changes**
3. **Frontend auto-reloads** (hot reload is enabled)
4. **Changes are live automatically** on your URL

**Your live site:** https://beanboard-experience.preview.emergentagent.com

---

## ✅ URLs You CAN Safely Update

✓ Swiggy restaurant link
✓ Google Maps link
✓ Phone numbers
✓ Social media links (in Footer.jsx)
✓ Any external links in your components

## ❌ URLs You Should NOT Manually Change

✗ `REACT_APP_BACKEND_URL` in frontend/.env
✗ `MONGO_URL` in backend/.env
✗ Any Emergent deployment URLs

---

## 📞 Quick Update Guide

### Update Swiggy Link:
```bash
# Edit these files:
/app/frontend/src/components/Hero.jsx
/app/frontend/src/components/Contact.jsx
/app/frontend/src/components/Menu.jsx

# Change line:
window.open('https://www.swiggy.com/dineout', '_blank');
# To:
window.open('YOUR_SWIGGY_URL_HERE', '_blank');
```

### Update Google Maps:
```bash
# Edit:
/app/frontend/src/data/mockData.js

# Update googleMapsLink value
```

---

## 🎯 Summary

**Your Website:** https://beanboard-experience.preview.emergentagent.com

**What to update:**
1. Replace Swiggy Dineout generic link with your specific restaurant URL
2. Update Google Maps link if coordinates are not accurate
3. Add your social media links in Footer.jsx

**What NOT to touch:**
- Frontend .env file (REACT_APP_BACKEND_URL)
- Backend .env file (MONGO_URL)

---

Need help updating any specific link? Let me know which one! 🚀
