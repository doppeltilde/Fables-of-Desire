'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "0f0b92422744ec4081f56d6a45acfddb",
"index.html": "bd6fc80496dcd5877178c83b365ef8ba",
"/": "bd6fc80496dcd5877178c83b365ef8ba",
"main.dart.js": "34e4654cf601b427cbf6f863a5effaff",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "526d4858ca122115590e02e307e1de80",
"assets/AssetManifest.json": "cee427dff401091183b515a4eda83d4a",
"assets/NOTICES": "96018073d21ef0d43142a37658c9de31",
"assets/FontManifest.json": "ed1afb7109e897af1d7095598b5c86b4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/easy_localization/i18n/ar-DZ.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/en.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/easy_localization/i18n/en-US.json": "5bd908341879a431441c8208ae30e4fd",
"assets/packages/easy_localization/i18n/ar.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/images/main.jpg": "98af69aa3f12b22bf92483d6421e9db9",
"assets/assets/images/gui/pausehover.png": "305d9b570fb72f53131fa88e1e3a9197",
"assets/assets/images/gui/loadhover.png": "3b1cb639c8427c6f6128f20ceeb7715c",
"assets/assets/images/gui/playhover.png": "d1573ec93cba846871f85bd2ae3adfe3",
"assets/assets/images/gui/icon_hover_scroll_08.png": "d6cde299a7e19013ae598192945fa5fb",
"assets/assets/images/gui/icon_hover_scroll_09.png": "daea7ddd2a37eca867049e2ef3aa0c00",
"assets/assets/images/gui/savehover.png": "b2a6842b0a4611585eb28a13da862b90",
"assets/assets/images/gui/fullhover.png": "6059751f8c7e3935eb0fcf79ea568c76",
"assets/assets/images/gui/backhover.png": "cff9168a3ae9e86c076c4fb84b2d08d2",
"assets/assets/images/gui/button_scroll_02.png": "12034b2d8d3d9a61248ccd7d7c35987c",
"assets/assets/images/gui/textbox_scroll_03.png": "06538be07ac4fd31645797d84c2a164c",
"assets/assets/images/gui/button_scroll_01.png": "a2c472f92302b7d0b462c6e35cf07fc2",
"assets/assets/images/gui/paintbrush_scroll_02.png": "4d6ab81d90c1eb092867386545c90bb1",
"assets/assets/images/gui/icon_hover_scroll_07.png": "adec3660739555292b888b8fb16132c9",
"assets/assets/images/gui/textbox_scroll_04.png": "7d8716656536b3ab8ee608d6be1f6666",
"assets/assets/images/gui/icon_hover_scroll_06.png": "665744706337c6c86ad87200767ece87",
"assets/assets/images/gui/morehover.png": "507cea09e0fa26d03d69c2c12bf262d7",
"assets/assets/images/gui/icon_hover_scroll_04.png": "a2c9851d2252682dcaa29194bc14171a",
"assets/assets/images/gui/fastforwardhover.png": "5e1197f998fab66bb56e8780014535ec",
"assets/assets/images/gui/soundhover.png": "4a1bb062be3d76efebd8e64ed5dfb0d5",
"assets/assets/images/gui/menu_scroll_01.png": "a8ecf45ee9452c1027dd1aece4901fd4",
"assets/assets/images/gui/menu_scroll_03.png": "a2a1e8e03ea398b3ec6be301de2729d5",
"assets/assets/images/gui/more.png": "8cc1ec3baaa5d62f0b2fb1c50765c684",
"assets/assets/images/gui/menu_scroll_02.png": "ed535fc23b3e0941b27890606e1faf30",
"assets/assets/images/gui/menu_scroll_06.png": "864519eb69d57f0842293e76270e4ce7",
"assets/assets/images/gui/play.png": "4c119894d6d473010c8c19def81999f3",
"assets/assets/images/gui/back.png": "de67175d1d061e3bdb78db2913b8772a",
"assets/assets/images/gui/menu_scroll_05.png": "655d8e2498154d47b508e5e014be5061",
"assets/assets/images/gui/full.png": "ff5374ad44d12fad5e6598c414737dbf",
"assets/assets/images/gui/menu_scroll_04.png": "0106f2be9f5de7ab3beb9f8a96be83eb",
"assets/assets/images/img1.jpg": "b54b440c8871916c8182076576a10b1a",
"assets/assets/images/sprites/hidetake_neutral.png": "cf0b8b83521f3cc9c3e1008966224286",
"assets/assets/images/sprites/naoki_neutral.png": "41301dd508d792d53b136ce564efc043",
"assets/assets/images/sprites/MC_Blush.png": "bb50b04db80adf01fcb3dedb54b4b1c1",
"assets/assets/images/sprites/tom_neutral.png": "0a82b60301b6396c66472cfe7c4148c7",
"assets/assets/images/sprites/transparent.png": "3495321c6b96977754d0640a217b0bbb",
"assets/assets/languages/de.json": "cc73d4d89abbea3788b9f09c20d9f6b4",
"assets/assets/languages/en.json": "c57898d657b541f459da8dddee8506b0",
"assets/assets/audio/warmth-of-the-sun-adi-goldstein.mp3": "bcd33b1536bbcf25a51b18d5cb72d85a",
"assets/assets/fonts/NanumBrushScript-Regular.ttf": "b1ce4cd13e96c14fa23147273b48d523",
"assets/assets/fonts/Aleo-Regular.ttf": "2c8657dd730745e32f6a12f365a9a725"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
