import React from 'react';
import { signatureExperience } from '../data/mockData';
import './Signature.css';

const Signature = () => {
  return (
    <section className="signature-section">
      <div className="container">
        <div className="signature-header">
          <h2 className="heading-1">The Bean Board Experience</h2>
          <p className="body-large signature-subtitle">
            From bean to cup, a journey of perfection
          </p>
        </div>

        <div className="signature-journey">
          {signatureExperience.map((stage, index) => (
            <div key={index} className="journey-stage">
              <div className="stage-number">
                <span className="caption font-mono">{String(index + 1).padStart(2, '0')}</span>
              </div>
              
              <div className="stage-image">
                <img src={stage.image} alt={stage.title} />
              </div>
              
              <div className="stage-content">
                <span className="caption font-mono stage-step">{stage.step}</span>
                <h3 className="heading-3">{stage.title}</h3>
                <p className="body-medium">{stage.description}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Signature;
