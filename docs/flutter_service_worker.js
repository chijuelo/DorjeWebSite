'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "4cc11b431d6a0f76cceeea3ccb9a6eb8",
"assets/AssetManifest.bin.json": "cd9bd1090248dc2cdfefc25c49215697",
"assets/AssetManifest.json": "6aed44dff9680332bef2eed43cab037e",
"assets/assets/fonts/bariol_bold-webfont.ttf": "e37416d74f8bde111e2643f642f76907",
"assets/assets/fonts/bariol_bold_italic-webfont.ttf": "0ea1485f684c72dbd8688449cda4aeea",
"assets/assets/fonts/bariol_light-webfont.ttf": "6283f3c72803165c0dfe3695d001c4f3",
"assets/assets/fonts/bariol_light_italic-webfont.ttf": "39cef87640ac12482c716b24d4b417bf",
"assets/assets/fonts/bariol_regular-webfont.ttf": "fe4c1a4b7dd202468d24660f719c9f47",
"assets/assets/fonts/bariol_regular_italic-webfont.ttf": "dc01ab8c9e3a22131b1e035dc84e1d7b",
"assets/assets/fonts/bariol_thin-webfont.ttf": "3f42e55fb8096258d6fd61e6b58fdf02",
"assets/assets/fonts/bariol_thin_italic-webfont.ttf": "a27f55c67b57a55cad4d1c22179a39ca",
"assets/assets/fonts/TitilliumText22L-250wt.otf": "3bc4aba8d6bcc645daf374e7e83369ad",
"assets/assets/images/1.png": "52cc89261eb7849e0ad049504071da3f",
"assets/assets/images/2.png": "74e11781fdfff31e2aeeb50f15c74c4c",
"assets/assets/images/3.png": "2c9d3181254666a45b528849d2d5652a",
"assets/assets/images/cartaMap.png": "4a839a0e0a5f3df4a0b8fe002b19abdb",
"assets/assets/images/chapas.png": "a202398565158f0ac7c5c84683c874dc",
"assets/assets/images/config.png": "92f2d22f17839744305ac2d38e58c14e",
"assets/assets/images/config.svg": "ac4ebc1beb3cdaab312c7744f9d1030e",
"assets/assets/images/eqz.png": "2c76aa82d42de257eece8a28e0d853ff",
"assets/assets/images/eqz.svg": "608de17eb24101a597a2bafbb92f05cc",
"assets/assets/images/exito1.png": "f5ad1e8aa48c99b4d3278d4d3a1dacfd",
"assets/assets/images/exito2.png": "b072f06f5170d24b984d0094a0c42d77",
"assets/assets/images/exito3.png": "ef22bc44258b3df4ba28ff269c962e31",
"assets/assets/images/footerbg.png": "7a181ef7c7fe4e58cda0dc155b091edc",
"assets/assets/images/i1.png": "64125cbde4285898faec6acb0d89b284",
"assets/assets/images/i2.png": "4a47a1729787147ac15c446cabf49588",
"assets/assets/images/i3.png": "2620cd1890a0b66d3c41cac6252e10e0",
"assets/assets/images/i4.png": "462a5427e896ac553719003ae755d93f",
"assets/assets/images/linieros.png": "c8d22af39610e6c9d9ac2093af16c396",
"assets/assets/images/logo2.0.png": "7423de1257b809c372cd1ceea4540ebb",
"assets/assets/images/logo_header.png": "717453db93f25f7a1c1c48ad7f59740c",
"assets/assets/images/map.png": "c45e67455afa9bfc7a069760c24485e2",
"assets/assets/images/map.svg": "0267392b97da8637f07e224690e09dd4",
"assets/assets/images/serv1.png": "451e3c680966712b6264669e425b8541",
"assets/assets/images/serv2.png": "84c0df506e02cddc62671c563c42bb18",
"assets/assets/images/serv3.png": "09bb4fceab5ef200fb9c81df0e731210",
"assets/assets/images/serv4.png": "7560ff2fb2733d486992526772974655",
"assets/assets/images/serv5.png": "7a3fb16122de7714b362da1d2f1ffa57",
"assets/assets/images/v1.1.gif": "11448122a3abb1f4ddecfd639111346e",
"assets/assets/images/v1.gif": "4ef6915f0d3f74ba90f11adaa05d64d4",
"assets/assets/images/v1.png": "0a6bd653ce289855b5f4b6322c716917",
"assets/assets/images/v1.svg": "6e466cf72dc464c3b20ee17d080f3245",
"assets/assets/images/v2.png": "8b3d180ec11d7f8fc209c9ef7db4f346",
"assets/assets/images/v2.svg": "1d1c7763c8fef45441deaa0d7a7f2663",
"assets/assets/images/v3.png": "ca817c2a1a3fc6cb7d00e666a603ddf6",
"assets/assets/images/v3.svg": "9e2ab221897e1969e66c3404e32ca4fd",
"assets/assets/images/v4.png": "8532a366d98f6498f72056289a7883ff",
"assets/assets/images/v4.svg": "37ffc556c57e08fdb17a96b0d97c9b39",
"assets/assets/images/v5.png": "33b407d86d072848e417f462a64060fa",
"assets/assets/images/v5.svg": "9c3ee61393f04b52830f10de64680edb",
"assets/assets/images/v6.png": "7a51cc6c71dfcbfcbaa3927bacbec4ca",
"assets/assets/images/v6.svg": "0e39c9369528e748c5c8a041eaa54d1d",
"assets/FontManifest.json": "e0cc87bb1f044a65754d09e4b69a2ae6",
"assets/fonts/bariol_bold-webfont.ttf": "e37416d74f8bde111e2643f642f76907",
"assets/fonts/bariol_bold_italic-webfont.ttf": "0ea1485f684c72dbd8688449cda4aeea",
"assets/fonts/bariol_light-webfont.ttf": "6283f3c72803165c0dfe3695d001c4f3",
"assets/fonts/bariol_light_italic-webfont.ttf": "39cef87640ac12482c716b24d4b417bf",
"assets/fonts/bariol_regular-webfont.ttf": "fe4c1a4b7dd202468d24660f719c9f47",
"assets/fonts/bariol_regular_italic-webfont.ttf": "dc01ab8c9e3a22131b1e035dc84e1d7b",
"assets/fonts/bariol_thin-webfont.ttf": "3f42e55fb8096258d6fd61e6b58fdf02",
"assets/fonts/bariol_thin_italic-webfont.ttf": "a27f55c67b57a55cad4d1c22179a39ca",
"assets/fonts/MaterialIcons-Regular.otf": "0bf769db1f15fd5a99207fff9db72214",
"assets/fonts/TitilliumText22L-250wt.otf": "3bc4aba8d6bcc645daf374e7e83369ad",
"assets/images/1.png": "52cc89261eb7849e0ad049504071da3f",
"assets/images/2.png": "74e11781fdfff31e2aeeb50f15c74c4c",
"assets/images/3.png": "2c9d3181254666a45b528849d2d5652a",
"assets/images/cartaMap.png": "4a839a0e0a5f3df4a0b8fe002b19abdb",
"assets/images/chapas.png": "a202398565158f0ac7c5c84683c874dc",
"assets/images/config.png": "92f2d22f17839744305ac2d38e58c14e",
"assets/images/config.svg": "ac4ebc1beb3cdaab312c7744f9d1030e",
"assets/images/eqz.png": "2c76aa82d42de257eece8a28e0d853ff",
"assets/images/eqz.svg": "608de17eb24101a597a2bafbb92f05cc",
"assets/images/exito1.png": "f5ad1e8aa48c99b4d3278d4d3a1dacfd",
"assets/images/exito2.png": "b072f06f5170d24b984d0094a0c42d77",
"assets/images/exito3.png": "ef22bc44258b3df4ba28ff269c962e31",
"assets/images/footerbg.png": "7a181ef7c7fe4e58cda0dc155b091edc",
"assets/images/i1.png": "64125cbde4285898faec6acb0d89b284",
"assets/images/i2.png": "4a47a1729787147ac15c446cabf49588",
"assets/images/i3.png": "2620cd1890a0b66d3c41cac6252e10e0",
"assets/images/i4.png": "462a5427e896ac553719003ae755d93f",
"assets/images/linieros.png": "c8d22af39610e6c9d9ac2093af16c396",
"assets/images/logo2.0.png": "7423de1257b809c372cd1ceea4540ebb",
"assets/images/logo_header.png": "717453db93f25f7a1c1c48ad7f59740c",
"assets/images/map.png": "c45e67455afa9bfc7a069760c24485e2",
"assets/images/map.svg": "0267392b97da8637f07e224690e09dd4",
"assets/images/serv1.png": "451e3c680966712b6264669e425b8541",
"assets/images/serv2.png": "84c0df506e02cddc62671c563c42bb18",
"assets/images/serv3.png": "09bb4fceab5ef200fb9c81df0e731210",
"assets/images/serv4.png": "7560ff2fb2733d486992526772974655",
"assets/images/serv5.png": "7a3fb16122de7714b362da1d2f1ffa57",
"assets/images/v1.1.gif": "11448122a3abb1f4ddecfd639111346e",
"assets/images/v1.gif": "4ef6915f0d3f74ba90f11adaa05d64d4",
"assets/images/v1.png": "0a6bd653ce289855b5f4b6322c716917",
"assets/images/v1.svg": "6e466cf72dc464c3b20ee17d080f3245",
"assets/images/v2.png": "8b3d180ec11d7f8fc209c9ef7db4f346",
"assets/images/v2.svg": "1d1c7763c8fef45441deaa0d7a7f2663",
"assets/images/v3.png": "ca817c2a1a3fc6cb7d00e666a603ddf6",
"assets/images/v3.svg": "9e2ab221897e1969e66c3404e32ca4fd",
"assets/images/v4.png": "8532a366d98f6498f72056289a7883ff",
"assets/images/v4.svg": "37ffc556c57e08fdb17a96b0d97c9b39",
"assets/images/v5.png": "33b407d86d072848e417f462a64060fa",
"assets/images/v5.svg": "9c3ee61393f04b52830f10de64680edb",
"assets/images/v6.png": "7a51cc6c71dfcbfcbaa3927bacbec4ca",
"assets/images/v6.svg": "0e39c9369528e748c5c8a041eaa54d1d",
"assets/NOTICES": "92950fa806f242e891b2e2e438101ed6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/glass_kit/assets/noise.png": "86f22ae1a498bb8f0c39264f9c7c796c",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/videos/v1.mp4": "0127cddba6c4f5b07c081f627c23e5a5",
"assets/videos/v2.mp4": "146d58cffa8e346655526b416f05d727",
"assets/videos/v3.mp4": "5dc6ace61786b922e02ab8d1e76359a3",
"assets/videos/v4.mp4": "5b0c8c03990fdbac5365bab7114c8331",
"assets/videos/v5.mp4": "c6a04f0c3f0dbe1a3214dfaf6037e3ec",
"assets/videos/v6.mp4": "5dc6ace61786b922e02ab8d1e76359a3",
"assets/videos/v7.mp4": "990d1f21d0a1ae58985355a14bfe4f9e",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "e42bfe2c0280201b8b460345e4bb3c0f",
"index.html": "74b59f12d488bc634abea385b402d12f",
"/": "74b59f12d488bc634abea385b402d12f",
"main.dart.js": "6062ebca5cd81864e9b89db071ba3717",
"manifest.json": "96d8862990737dd5a72602730518a6de",
"version.json": "37bdaede00477f177059f7d01ae1d8f3"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
