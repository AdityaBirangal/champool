'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "ce572a2f338644f3ad61c8d76c96bd3b",
"/main.dart.js": "40abadc70696528812f6ccdc555f4f72",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "683bcc71296aa798e3ba9c9941ffa1e2",
"/assets/LICENSE": "964211db6a8b173b1744e68da77ce459",
"/assets/images/Champool_Logo.png": "0b472a5cb8efc12fded5d10dd8cb1938",
"/assets/images/diceImages/dice1.png": "5e0580134cde323cc6e2d54254b1a605",
"/assets/images/diceImages/dice3.png": "683bc715f147a48b2e2dcabf2d573a05",
"/assets/images/diceImages/dice2.png": "524559a3d0e61efa7b8a165bd2bad0da",
"/assets/images/diceImages/dice6.png": "2d7642d5229bb083f5e59cf1cee4aa28",
"/assets/images/diceImages/dice5.png": "ae4a1c88865e22a54c7aeb91f18db784",
"/assets/images/diceImages/dice4.png": "3c7e0c5d05aeaa567bb90faf18f79f38",
"/assets/images/Board.png": "e7940da70aafa40b2e64f13f218d6fb4",
"/assets/AssetManifest.json": "60a694bc69bcbe1be0d3310dc45ba48e",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
