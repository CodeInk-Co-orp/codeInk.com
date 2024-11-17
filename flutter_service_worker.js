'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "f393d3c16b631f36852323de8e583132",
"main.dart.js": "409f82f8b71533a7a6bd9eb36d32742a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "166bb720421caa081110497af778a371",
"assets/fonts/MaterialIcons-Regular.otf": "a354d4e860f6e2e74f4ead626a12313e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/assets/images/4.jpg": "78d6ae2df78358eb20a44290b2ad8b52",
"assets/assets/images/note_pad.png": "2abca2ad9ceee0c92777e98b69f773b2",
"assets/assets/images/web_page.jpg": "f668d4120c0ffed4327be234ef6e296b",
"assets/assets/images/1.png": "1d603d175eca804505a2a7412a448123",
"assets/assets/images/3.jpg": "b7d85de5d1e7bfb4e5122471fbe55220",
"assets/assets/images/life_assistant.png": "1723b725dcb6e5c276dc586c83fb303e",
"assets/assets/images/office.jpg": "863be6d6b8ab8b9c422159013e3d798b",
"assets/assets/images/pick_and_drop.png": "f719d54dfb1dd67b4de9de2ec8f175b2",
"assets/assets/images/2.jpg": "477c5affdaa82dca1c646a2bbfba51cf",
"assets/assets/videos/note_pad.mp4": "082b8a1595dd3ace9389086e9f6b71f8",
"assets/assets/videos/pick_and_drop.mp4": "4b471a94e708d758ab8584e9a96eeb17",
"assets/assets/videos/life_assistant.mp4": "c49f76e942b74f941de1e3a475912cdd",
"assets/assets/icons/api.png": "a4ac90c114d1f6295180a768ff27dd30",
"assets/assets/icons/codink_logo.png": "37bfa05ba626ea6749eefa2a1e5b4979",
"assets/assets/icons/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/assets/icons/web.png": "d4dafc1872ce59ef45c2da30615dfa41",
"assets/assets/icons/graphics.png": "69816b1840605cdb2466a90beaaacec7",
"assets/assets/icons/clock.png": "e4397307b8e7a61a160bb1edbda72b94",
"assets/assets/icons/call.png": "73c2e76e7bb79d6817f09cf5d3831dc9",
"assets/assets/icons/social.png": "1da1618b88bbbb6a0aa49985c76f71c8",
"assets/assets/icons/ios.png": "71ea78f8f24aced63afa474d88f0237c",
"assets/assets/icons/android.png": "4bfd9426317fef413fe479175bf2320d",
"assets/assets/icons/twitter.png": "a8f692e1d74ae65793b6d212794bc0c2",
"assets/assets/icons/money.png": "7eba7c5c2e5a708f15dafd3d40468ba5",
"assets/assets/icons/email.png": "57785b3921a2c43a6ac9931b488fd38f",
"assets/assets/icons/linkedin.png": "d492efc706db983e74258dbd348f2208",
"assets/assets/icons/ps.png": "2f86df0347927cf7dad3349898324e42",
"assets/assets/icons/location.png": "11abdde0c31967fe44b9f8f241190db9",
"assets/NOTICES": "c404ccb4c56f2e32118f86ff14ef319e",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "91c0f5f5ab1b049519a2b8b0a914bdda",
"assets/AssetManifest.bin.json": "1a91b6ceee0ab199131e5b4d4b619684",
"index.html": "ccd1a8bb9d1ccf56f7cde87777ece372",
"/": "ccd1a8bb9d1ccf56f7cde87777ece372",
"manifest.json": "b81eeca0dc028ac0ff74aa1e746d8cb3",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"icons/Icon-maskable-192.png": "d018619496e360230e3d47423ac88b1f",
"icons/Icon-192.png": "d018619496e360230e3d47423ac88b1f",
"icons/Icon-512.png": "48b60e8aa6eaccc41229caf813641f7e",
"icons/Icon-maskable-512.png": "48b60e8aa6eaccc41229caf813641f7e",
"favicon.png": "9104e812fdc30b1853d34c417b1cccf1",
"version.json": "1cc0a95b0bcbcc2ac5bd561b08e49770",
"flutter_bootstrap.js": "25ed34128deaff149c1d916693edbb1b"};
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
