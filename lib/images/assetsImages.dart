import 'package:flutter/material.dart';

class ImagesExample extends StatefulWidget {
  final String title;

  const ImagesExample({super.key, required this.title});

  @override
  State<ImagesExample> createState() => _ImagesExample();
}

class _ImagesExample extends State<ImagesExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
        ),
     body:  Center(
        child: Container(
          width: 350,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.network(
            "https://picsum.photos/2000/1000", // 👈 large image to see loader clearly
            fit: BoxFit.cover,

            // 👇 Stylish loading indicator
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child; // ✅ image loaded
              }

              double? progress;
              if (loadingProgress.expectedTotalBytes != null) {
                progress = loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!;
              }

              return Container(
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 🔹 Circular Progress Loader
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: CircularProgressIndicator(
                          value: progress,
                          strokeWidth: 7,
                          backgroundColor: Colors.white,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.blueAccent,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      // 🔹 Loading text or percentage
                      Text(
                        progress != null
                            ? "Loading ${(progress * 100).toStringAsFixed(0)}%"
                            : "Loading...",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },

            // 👇 Error builder (optional)
            errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Icon(Icons.error, color: Colors.red, size: 50),
              );
            },
          ),
        ),
      ),


      // Image(
      //   image: AssetImage("assets/images/nature.jpg"),
      //
      //   // 🧩 Size & Fit
      //   width: 200,
      //   // Image width
      //   height: 150,
      //   // Image height
      //   fit: BoxFit.cover,
      //   // How image fits in its box (contain, fill, cover, etc.)
      //   alignment: Alignment.center,
      //   // Align image inside its box
      //
      //   // 🎨 Color & Effects
      //   color: Colors.black.withValues(alpha: 0.3),
      //   // Apply color tint overlay
      //   colorBlendMode: BlendMode.darken,
      //   // Blend mode for overlay color
      //   opacity: AlwaysStoppedAnimation(0.8),
      //   // Image transparency (1.0 = full visible)
      //   filterQuality: FilterQuality.high,
      //   // Rendering quality (none, low, medium, high)
      //   isAntiAlias: true,
      //   // Smooth edges of image
      //
      //   // ♻️ Repeat / Direction
      //   // repeat: ImageRepeat.noRepeat,          // repeat, repeatX, repeatY
      //   // matchTextDirection: false,             // Flip image for RTL layouts
      //
      //   // 🔳 Special Image behavior
      //   // gaplessPlayback: false,                // Avoid flicker if image changes
      //   // centerSlice: Rect.fromLTWH(10, 10, 50, 50), // For stretchable images (optional)
      //
      //   // ♿ Accessibility
      //   semanticLabel: "Nature scenery",
      //   // For screen readers
      //   excludeFromSemantics: false,
      //   // If true, ignore accessibility
      //
      //   // ⚙️ Builders (optional — used with network/images loading)
      //   frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
      //     // Animation per frame (like fade-in)
      //     return child;
      //   },
      //   loadingBuilder: (context, child, loadingProgress) {
      //     // Show loader while loading (useful for network)
      //     return child;
      //   },
      //   errorBuilder: (context, error, stackTrace) {
      //     // Handle error (useful for network)
      //     return Icon(Icons.error, size: 50);
      //   },
      // ),
    );
  }
}
