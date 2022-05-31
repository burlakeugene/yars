import jQuery from './js/jquery/jquery';
import fancybox from './js/fancybox/fancybox.js';
import Swiper from './js/swiper/swiper.min.js';
import BurlakNavigation from './js/burlak-navigation.js';
import * as Burlak from 'burlak';
import Maskit from 'maskit';
import Map from './js/map.js';
import Notic from 'notic';
import CookieToggler from './js/cookieToggler';
import Request from './js/request';
import { eventDecorator, declension } from './helpers';

(function ($) {
  if ($.fancybox) {
    $.fancybox.defaults.hash = false;
  }
  function runCount(item) {
    var bool = item.getAttribute('bool'),
      from = item.getAttribute('data-from'),
      to = item.getAttribute('data-to'),
      seconds = item.getAttribute('data-seconds'),
      milliseconds = parseInt(seconds) ? parseInt(seconds) * 1000 : 500;
    from = parseInt(from);
    to = parseInt(to);
    if (!bool) {
      item.setAttribute('bool', 1);
      $(item)
        .prop('Counter', from)
        .animate(
          {
            Counter: to,
          },
          {
            duration: milliseconds,
            easing: 'swing',
            step: function (now) {
              $(this).text(Math.ceil(now));
            },
          }
        );
    }
  }

  function clearCount(item) {
    var from = item.getAttribute('data-from');
    item.removeAttribute('bool');
    from = parseInt(from);
    $(item).text(from);
  }

  var view = Burlak.InView;
  var isMobile = new Burlak.Detection().isMobile;
  $(document).ready(function () {
    window.Notic = new Notic();
    document.addEventListener('wpcf7mailsent', function (event) {
      $.fancybox.close();
      window.Notic.addMessage({
        message: event.detail.apiResponse.message,
        type: 'success',
        delay: 5000,
      });
      let dialogs = document.querySelectorAll('.dialog');
      dialogs.length &&
        dialogs.forEach((dialog) => {
          dialogStatus = false;
          dialog.classList.remove('dialog--show');
        });
    });

    let dialogStatus = window.innerWidth > 768;

    window.callModal = function (name) {
      $.fancybox.open({
        src: '#callback',
        type: 'inline',
        opts: {
          baseClass: 'modal-wrapper',
          afterShow: function () {
            $('input.place').val(name ? name : '');
          },
          afterClose: function () {
            $('input.place').val('');
          },
        },
      });
    };

    var modalBool = localStorage.getItem('modalBool') || false;
    document.addEventListener('mouseout', function () {
      let e = event,
        t = e.relatedTarget || e.toElement;
      if ((!t || t.nodeName == 'HTML') && !modalBool) {
        modalBool = true;
        localStorage.setItem('modalBool', true);
        window.callModal('Убрали мышь');
      }
    });

    function commonFunc() {
      let callbackButtons = document.querySelectorAll('[data-callback]');
      callbackButtons.length &&
        callbackButtons.forEach((button) => {
          eventDecorator({
            target: button,
            event: {
              type: 'click',
              body: (e) => {
                e.preventDefault();
                callModal(button.dataset.callback);
              },
            },
          });
        });

      let dialogs = document.querySelectorAll('.dialog');
      dialogs.length &&
        dialogs.forEach((dialog) => {
          if (dialogStatus) {
            setTimeout(() => {
              dialog.classList.add('dialog--show');
            }, 1000);
          }
          let openButton = dialog.querySelector('.dialog-call'),
            closeButton = dialog.querySelector('.dialog-close');
          eventDecorator({
            target: openButton,
            event: {
              type: 'click',
              body: (e) => {
                dialogStatus = true;
                e.preventDefault();
                openButton.closest('.dialog').classList.add('dialog--show');
              },
            },
          });
          eventDecorator({
            target: closeButton,
            event: {
              type: 'click',
              body: (e) => {
                dialogStatus = false;
                e.preventDefault();
                closeButton.closest('.dialog').classList.remove('dialog--show');
              },
            },
          });
        });

      let fieldsInit = () => {
        let fields = document.querySelectorAll('.field');
        fields.length &&
          fields.forEach((field) => {
            let data = field.dataset,
              buttons = field.querySelectorAll('.field__button'),
              input = field.querySelector('.field__input');
            let checkButtonsEnabled = (nextValue) => {
              buttons.forEach((button) => {
                if (button.dataset.direction === '1' && data.max) {
                  button.disabled = nextValue >= parseFloat(data.max);
                }
                if (button.dataset.direction === '-1' && data.min) {
                  button.disabled = nextValue <= parseFloat(data.min);
                }
              });
            };
            buttons.forEach((button) => {
              eventDecorator({
                target: button,
                event: {
                  type: 'click',
                  body: (e) => {
                    e.stopPropagation();
                    let nextValue =
                      parseFloat(data.value) +
                      parseFloat(button.dataset.direction) *
                        parseFloat(data.step);
                    if (data.max && nextValue > parseFloat(data.max))
                      nextValue = parseFloat(data.max);
                    if (data.min && nextValue < parseFloat(data.min))
                      nextValue = parseFloat(data.min);
                    data.value = nextValue;
                    input.innerHTML = nextValue + data.postfix;
                    if (field.closest('.product__cart')) {
                      let button = field
                        .closest('.product__cart')
                        .querySelector('.cart__add');
                      button.dataset.quantity = nextValue;
                      checkButtonsEnabled(nextValue);
                    } else if (field.closest('.product__qty')) {
                      let parent = field.closest('.product__qty');
                      buttons.forEach((button) => {
                        button.disabled = true;
                      });
                      cart
                        .qty({
                          key: parent.dataset.key,
                          qty: nextValue,
                        })
                        .finally(() => {
                          buttons.forEach((button) => {
                            button.disabled = false;
                          });
                          checkButtonsEnabled(nextValue);
                          fieldsInit();
                        });
                    } else {
                      checkButtonsEnabled(nextValue);
                    }
                  },
                },
              });
            });
          });
      };

      let productGallery = document.querySelectorAll('.product__gallery');
      productGallery.length &&
        productGallery.forEach((gallery) => {
          let thumbs = gallery.querySelectorAll('.product__gallery__thumb'),
            items = gallery.querySelectorAll('.product__gallery__item');
          thumbs.length &&
            thumbs.forEach((thumb) => {
              eventDecorator({
                target: thumb,
                event: {
                  type: 'click',
                  body: (e) => {
                    e.preventDefault();
                    let { index } = thumb.dataset,
                      active = thumb.dataset.hasOwnProperty('active');
                    if (active) return;
                    thumbs.forEach((thumb) => {
                      if (thumb.dataset.index === index) {
                        thumb.dataset.active = '1';
                      } else {
                        delete thumb.dataset.active;
                      }
                    });
                    items.length &&
                      items.forEach((item) => {
                        if (item.dataset.index === index) {
                          item.dataset.active = '1';
                        } else {
                          let video = item.querySelector('video');
                          if (video) video.pause();
                          delete item.dataset.active;
                        }
                      });
                  },
                },
              });
            });
        });

      if (!isMobile()) {
        $('[data-fancybox="gallery"]').fancybox({
          thumbs: {
            autoStart: true,
          },
        });
      }
      let tabs = document.querySelectorAll('.tabs');
      tabs.length &&
        tabs.forEach((item, index) => {
          let buttons = item.querySelectorAll('.tabs__button');
          buttons.forEach((button, index) => {
            button.addEventListener('click', (e) => {
              let name = e.target.getAttribute('data-tab-id'),
                buttons = e.target
                  .closest('.tabs')
                  .querySelectorAll('.tabs__button'),
                targets = e.target
                  .closest('.tabs')
                  .querySelectorAll('.tabs__content');
              if (!name) return;
              buttons.forEach((button, index) => {
                button.classList.remove('tabs__button--active');
              });
              e.target.classList.add('tabs__button--active');
              targets.forEach((target, index) => {
                if (target.getAttribute('data-tab-id') === name) {
                  target.classList.add('tabs__content--active');
                } else {
                  target.classList.remove('tabs__content--active');
                }
              });
            });
          });
        });

      let navigation = document.querySelector('.header__navigation');
      navigation &&
        navigation.addEventListener('click', (e) => {
          e.stopPropagation();
        });

      var toggles = document.querySelectorAll('.toggle');
      toggles.length &&
        toggles.forEach((toggle) => {
          eventDecorator({
            target: toggle,
            event: {
              type: 'click',
              body: (e) => {
                e.preventDefault();
                e.stopPropagation();
                document.body.classList.toggle('navigation-visible');
              },
            },
          });
        });
      new view('.lazy', {
        in: (item) => {
          setTimeout(() => {
            let img = item.querySelector('img') || false,
              url = img ? img.getAttribute('data-lazy') : false,
              allImages = document.querySelectorAll(
                '[data-lazy="' + url + '"]'
              );
            if (!img || !url) return;
            var newImage = new Image();
            newImage.addEventListener('load', () => {
              allImages.forEach((img, index) => {
                img.src = url;
                img.removeAttribute('data-lazy');
                img.closest('.lazy') &&
                  img.closest('.lazy').classList.add('lazy-loaded');
              });
            });
            newImage.src = url;
          }, 0);
        },
      });
      new Swiper('.banners', {
        speed: 600,
        slidesPerView: 'auto',
        navigation: {
          prevEl: '.banners .swiper-button-prev',
          nextEl: '.banners .swiper-button-next',
        },
        pagination: {
          el: '.banners .swiper-pagination',
          type: 'fraction',
        },
        autoplay: {
          delay: 5000,
        },
      });

      let maps = document.querySelectorAll('.map');
      maps.length &&
        maps.forEach((map) => {
          new Map({
            element: map,
          });
        });

      jQuery('.gallery').each(function () {
        jQuery(this)
          .find('.gallery-icon a')
          .attr('data-fancybox', 'group-' + jQuery(this).attr('id'));
      });

      let accordions = document.querySelectorAll('.accordion');
      for (let i = 0; i < accordions.length; i++) {
        var accordionToggle = accordions[i].querySelector('.accordion__toggle'),
          parent = accordionToggle.parentNode,
          target = parent.querySelector('.accordion__target');
        if (parent.classList.contains('opened')) {
          target.style.height = target.scrollHeight + 'px';
        }
        eventDecorator({
          target: accordionToggle,
          event: {
            type: 'click',
            body: (e) => {
              var parent = e.target.parentNode,
                target = parent.querySelector('.accordion__target');
              if (parent.classList.contains('opened')) {
                target.style.height = 0 + 'px';
              } else {
                target.style.height = target.scrollHeight + 'px';
              }
              accordions.forEach((item, index) => {
                if (item === parent) return;
                let target = item.querySelector('.accordion__target');
                item.classList.remove('opened');
                target.style.height = 0 + 'px';
              });
              parent.classList.toggle('opened');
            },
          },
        });
      }

      let scrollers = document.querySelectorAll('.scroller, .scroller a');
      scrollers.length &&
        scrollers.forEach((scroller) => {
          scroller.addEventListener('click', (e) => {
            let target = document.querySelector(scroller.getAttribute('href'));
            if (!target) return;
            e.preventDefault();
            let offset = 0,
              header = document.querySelector('header.header');
            if (header) offset += header.clientHeight;
            let top =
              target.getBoundingClientRect().top + window.scrollY - offset;
            window.scrollTo({ top, behavior: 'smooth' });
          });
        });
      let loadMore = document.querySelectorAll('.load-more');
      loadMore.length &&
        loadMore.forEach((container) => {
          let button = container.querySelector(
            '.load-more__pagination__button'
          );
          button &&
            eventDecorator({
              target: button,
              event: {
                type: 'click',
                body: (e) => {
                  e.preventDefault();
                  button.classList.add('button--loading');
                  button.disabled = true;
                  let navigation = button.closest('.load-more__pagination'),
                    list = button
                      .closest('.load-more')
                      .querySelector('.load-more__list'),
                    next = navigation.querySelector('.next'),
                    href = next.href;
                  Request.get({
                    url: href,
                    headers: {
                      'Content-Type': 'text/html; charset=utf-8',
                    },
                  }).then((html) => {
                    let parser = new DOMParser();
                    html = parser.parseFromString(html, 'text/html');
                    html = html.querySelector('.load-more');
                    let htmlNavigation = html.querySelector(
                        '.load-more__pagination'
                      ),
                      htmlList = html.querySelector('.load-more__list');
                    if (htmlList.children.length) {
                      for (let i = 0; i <= htmlList.children.length; i++) {
                        if (htmlList.children[i])
                          list.appendChild(htmlList.children[i]);
                      }
                      router.addLinksEvent();
                    }
                    if (htmlNavigation) {
                      navigation.parentNode.replaceChild(
                        htmlNavigation,
                        navigation
                      );
                    } else {
                      navigation.remove();
                    }
                    history.pushState(null, null, href);
                    commonFunc();
                  });
                },
              },
            });
        });

      let selects = document.querySelectorAll('.select');
      selects.length &&
        selects.forEach((select) => {
          let active = select.querySelector('.select__current');
          active &&
            eventDecorator({
              target: active,
              event: {
                type: 'click',
                body: (e) => {
                  e.stopPropagation();
                  active.closest('.select').classList.toggle('select--active');
                },
              },
            });
        });
      document.addEventListener('click', (e) => {
        document.body.classList.remove('navigation-visible');
        selects.length &&
          selects.forEach((select) => {
            select.classList.remove('select--active');
          });
      });
      fieldsInit();

      let shares = document.querySelectorAll('.ya-share');
      shares.length &&
        Ya &&
        Ya.share2 &&
        shares.forEach((share) => {
          Ya.share2(share.id, {
            content: { ...share.dataset },
          });
        });

      let maskits = document.querySelectorAll(
        'input[data-maskit], input[name="phone"]'
      );
      maskits.length &&
        maskits.forEach((maskit) => {
          new Maskit(maskit, {
            mask: maskit.getAttribute('data-maskit') || '+{7}(000) 000-00-00',
            // notFilledClear: true,
            onFilled: (scope) => {},
            offFilled: (scope) => {},
            onBlur: (scope) => {},
            onChange: (scope) => {},
            onInit: (scope) => {},
          });
        });
      let videos = document.querySelectorAll('.video');
      videos.length &&
        videos.forEach((videoWrapper) => {
          let video = videoWrapper.querySelector('video'),
            control = videoWrapper.querySelector('.video__control');
          eventDecorator({
            target: control,
            event: {
              type: 'click',
              body: (e) => {
                e.preventDefault();
                video && video.play();
              },
            },
          });
          eventDecorator({
            target: video,
            event: {
              type: 'play',
              body: (e) => {
                videoWrapper.classList.add('video--played');
              },
            },
          });
          eventDecorator({
            target: video,
            event: {
              type: 'pause',
              body: (e) => {
                setTimeout(() => {
                  if (!video.dataset.seeking) {
                    videoWrapper.classList.remove('video--played');
                  }
                }, 0);
              },
            },
          });
          eventDecorator({
            target: video,
            event: {
              type: 'seeking',
              body: (e) => {
                video.dataset.seeking = '1';
              },
            },
          });
          eventDecorator({
            target: video,
            event: {
              type: 'seeked',
              body: (e) => {
                setTimeout(() => {
                  delete video.dataset.seeking;
                }, 0);
              },
            },
          });
        });

      let forms = document.querySelectorAll('.wpcf7-form');
      window.wpcf7 &&
        window.wpcf7.init &&
        forms.length &&
        forms.forEach((form, index) => {
          if (!form.querySelector('.wpcf7-spinner')) window.wpcf7.init(form);
        });
    }

    window.router = new BurlakNavigation({
      container: '#app',
      navItems: '.ajax, .ajax a, .pagination a, .breadcrumbs a',
      preloader: true,
      beforeInit: function () {},
      beforeRendered: function () {
        $.fancybox.close();
      },
      afterRendered: function (appContainer) {
        window.scrollTo(0, 0);
        commonFunc();
        var hash = window.location.hash,
          item = null;
        if (hash) item = appContainer.querySelector(hash);
        if (item) {
          window.scroll({
            top:
              item.offsetTop - document.querySelector('.header').clientHeight,
            behavior: 'smooth',
          });
        }
        //safari height hack
        let images = document.querySelectorAll('img[srcset]');
        images.forEach((img, index) => {
          img.outerHTML = img.outerHTML;
        });
      },
      afterInit: function () {},
    });
    router.init();
  });

  window.addEventListener('load', function () {
    var preloader = document.querySelector('.preloader');
    if (preloader) {
      preloader.classList.remove('preloader__visible');
      setTimeout(function () {
        preloader.parentNode.removeChild(preloader);
      }, 400);
    }
  });

  window.addEventListener('scroll', () => {
    if (document.body.scrollTop > 1 || document.documentElement.scrollTop > 1) {
      document.body.classList.add('scrolled');
    } else {
      document.body.classList.remove('scrolled');
    }
  });
})(jQuery);
