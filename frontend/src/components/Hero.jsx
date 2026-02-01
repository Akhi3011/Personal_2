import React from 'react';
import { ArrowRight } from 'lucide-react';
import './Hero.css';

const Hero = () => {
  const scrollToMenu = () => {
    const menuSection = document.getElementById('menu');
    if (menuSection) {
      menuSection.scrollIntoView({ behavior: 'smooth' });
    }
  };

  const handleReserve = () => {
    window.open('https://wa.me/917382638620?text=Hi! I would like to reserve a table at Bean Board', '_blank');
  };

  return (
    <section className="hero-section">
      <div className="hero-content container">
        <div className="hero-announcement">
          <span className="caption font-mono">Rated 4.3 ⭐ • 1,123 Reviews</span>
        </div>
        
        <h1 className="heading-hero hero-title">
          Where Every Cup<br />Tells a Story
        </h1>
        
        <p className="body-large hero-subtitle">
          Experience the perfect blend of quality coffee, cozy ambience, 
          and warm hospitality at Visakhapatnam's favorite café
        </p>

        <div className="hero-cta">
          <button onClick={handleReserve} className="btn-primary">
            Reserve a Table
          </button>
          <button onClick={scrollToMenu} className="btn-secondary">
            Explore Menu <ArrowRight size={16} style={{ marginLeft: '0.5rem' }} />
          </button>
        </div>

        <div className="hero-info">
          <div className="info-item">
            <span className="caption font-mono">HOURS</span>
            <p className="body-small">Open Daily · Closes 11 PM</p>
          </div>
          <div className="info-divider"></div>
          <div className="info-item">
            <span className="caption font-mono">PRICE RANGE</span>
            <p className="body-small">₹200 - ₹400 per person</p>
          </div>
          <div className="info-divider"></div>
          <div className="info-item">
            <span className="caption font-mono">LOCATION</span>
            <p className="body-small">Seetammadhara, Vizag</p>
          </div>
        </div>
      </div>
      
      <div className="hero-image-overlay"></div>
    </section>
  );
};

export default Hero;
