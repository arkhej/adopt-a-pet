$.extend(true, $.magnificPopup.defaults, {
  tClose: 'Cerrar (Esc)', // Alt text on close button
  tLoading: 'Cargando...', // Text that is displayed during loading. Can contain %curr% and %total% keys
  gallery: {
    tPrev: 'Anterior (Tecla flecha izquierda)', // Alt text on left arrow
    tNext: 'Siguente (Tecla flecha derecha)', // Alt text on right arrow
    tCounter: '%curr% de %total%' // Markup for "1 of 7" counter
  },
  image: {
    tError: '<a href="%url%">La imagen</a> no pudo ser cargada.' // Error message when image could not be loaded
  },
  ajax: {
    tError: '<a href="%url%">El contenido</a> no pudo ser cargado.' // Error message when ajax request failed
  }
});