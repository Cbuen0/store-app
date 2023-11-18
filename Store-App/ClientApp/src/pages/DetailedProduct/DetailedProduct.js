import React from 'react';
import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import "./DetailedProduct.css";
import { ProductBox } from "../../components/Product/ProductBox/ProductBox.js";
import { Row } from "react-bootstrap";

export const DisplayDetailedProduct = () => {
    const { productId } = useParams();
    const [productById, setProductById] = useState({});

    useEffect(() => {
        fetch(`product/getProduct/${productId}`)
            .then((response) => response.json())
            .then((json) => {
                setProductById(json);
            });
    }, [productId]);

    const description = "Description: " + productById?.descript;
    const manufacturer = "Manufacturer: " + productById?.manufacturerInformation;
    const dimensions = "Dimensions: \"" + productById?.prodHeight + "\" X \"" + productById?.prodWidth + "\" X \"" + productById?.prodLength + "\" X \"" + productById?.prodWeight + "\"";

    return (
        <div className="outer-container" style={{ paddingTop: '200px' }}>
            <table style={{ width: '100%', marginTop: '10px', borderCollapse: 'collapse' }}>
                <tbody>
                    <Row className="justify-content-md-center">
                        <div style={{ display: 'flex', justifyContent: 'center' }}>
                            <ProductBox product={productById}></ProductBox>
                        </div>
                    </Row>
                    <Row className="justify-content-md-center">
                        <h6 className="product-text">{description}</h6>
                    </Row>
                    <Row className="justify-content-md-center">
                        <h6 className="product-text">{manufacturer}</h6>
                    </Row>
                    <Row className="justify-content-md-center">
                        <h6 className="product-text">{dimensions}</h6>
                    </Row>
                    <Row className="justify-content-md-center">
                        <div style={{ display: 'flex', justifyContent: 'right' }}>
                            <button className="btn-primary">Add to Cart</button>
                        </div>
                    </Row>
                </tbody>
            </table>
        </div>
    );
};
export default DisplayDetailedProduct;