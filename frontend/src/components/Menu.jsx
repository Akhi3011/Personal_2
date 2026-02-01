import React, { useState } from 'react';
import { menuCategories } from '../data/mockData';
import './Menu.css';

const Menu = () => {
  const [activeCategory, setActiveCategory] = useState('coffee');

  const activeMenu = menuCategories.find(cat => cat.id === activeCategory);

  return (
    <section id="menu" className="menu-section">
      <div className="container">
        <div className="menu-header">
          <h2 className="heading-1">Our Menu</h2>
          <p className="body-large menu-subtitle">
            Handcrafted with care, served with love
          </p>
        </div>

        <div className="menu-categories">
          {menuCategories.map((category) => (
            <button
              key={category.id}
              onClick={() => setActiveCategory(category.id)}
              className={`category-btn ${activeCategory === category.id ? 'active' : ''}`}
            >
              {category.name}
            </button>
          ))}
        </div>

        <div className="menu-content">
          <div className="menu-featured">
            <img 
              src={activeMenu.image} 
              alt={activeMenu.name}
              className="featured-image"
            />
            <div className="featured-overlay">
              <h3 className="heading-2">{activeMenu.name}</h3>
              <p className="body-medium">{activeMenu.description}</p>
            </div>
          </div>

          <div className="menu-items">
            {activeMenu.items.map((item, index) => (
              <div key={index} className="menu-item">
                <div className="item-header">
                  <h4 className="heading-3">{item.name}</h4>
                  <span className="item-price font-mono">{item.price}</span>
                </div>
                <p className="body-small item-description">{item.description}</p>
              </div>
            ))}
          </div>
        </div>

        <div className="menu-cta">
          <a 
            href="https://www.swiggy.com" 
            target="_blank" 
            rel="noopener noreferrer" 
            className="btn-primary"
          >
            Order on Swiggy
          </a>
          <a 
            href="tel:07382638620" 
            className="btn-secondary"
          >
            Call to Order
          </a>
        </div>
      </div>
    </section>
  );
};

export default Menu;
