# Reverse Incremental Chess Trainer - PWA Edition

A Progressive Web App for mastering chess puzzles using reverse incremental learning. Start with checkmate and work backwards!

## Features

✨ **Reverse-Incremental Learning**: Start with the final move (level 1), then last 2 moves (level 2), continuing until you solve the full puzzle.

📱 **Mobile-First Design**: Optimized for touch interactions and mobile screens.

⚡ **Progressive Web App**: 
- Install directly on your phone home screen
- Works offline with service worker caching
- Native app feel with full-screen mode
- Vibration feedback for correct/incorrect moves

🎮 **Click-to-Move Board**: Select pieces and target squares with visual feedback.

📊 **Progress Tracking**: Track completed puzzles and levels across sessions.

## Files

- `reverse_chess_trainer.html` - Main app (single-file, self-contained)
- `manifest.json` - PWA manifest with icons and metadata
- `sw.js` - Service Worker for offline support

## Quick Start

1. **Open in browser**: Open `reverse_chess_trainer.html` in a modern browser (Chrome, Firefox, Safari, Edge)

2. **Install as PWA**:
   - **Android**: Click the "Install App" button when it appears, or use browser menu → "Install app"
   - **iPhone**: Use Safari menu → "Add to Home Screen"
   - **Desktop**: Use browser menu → "Install app" (Chromium browsers)

3. **Load a PGN file**: 
   - Click "Load Puzzles"
   - Select a PGN file containing chess puzzles
   - The app will parse puzzles with FEN starting positions and extract move sequences

4. **Train puzzles**:
   - Click a puzzle to load it
   - Solve each level by clicking pieces and target squares
   - Progress through levels (each adds one more move to solve)
   - Unlock the next puzzle by completing the current one

## Hosting on GitHub Pages

### Setup

1. Create a GitHub repository (e.g., `chess-trainer`)
2. Enable GitHub Pages in repository settings → Pages → Deploy from `main` branch
3. Push the three files to the repository

### File Structure

```
chess-trainer/
├── reverse_chess_trainer.html
├── manifest.json
└── sw.js
```

### Access

Your app will be available at: `https://yourusername.github.io/chess-trainer/`

### Notes for GitHub Pages

- Make sure paths in service worker registration and manifest are correct (use relative paths)
- GitHub Pages enforces HTTPS, which is required for service workers
- If deploying to a subdirectory, adjust paths accordingly in the HTML

## How Reverse-Incremental Learning Works

**Traditional approach**: Solve a puzzle by finding the full sequence from the start.

**Reverse-incremental approach**: 
1. **Level 1**: Play only the final move (recognize checkmate)
2. **Level 2**: Play the final 2 moves (see checkmate setup)
3. **Level 3**: Play the final 3 moves
4. ... continue until the full solution

This builds chess intuition backwards: you first understand the winning position, then see how it's achieved, then work backwards to find it yourself.

## PGN Format

Puzzles should be in standard PGN format with:
- `[FEN "..."]` - Starting position
- `[Event "..."]` - Optional puzzle title
- Move sequence in algebraic notation

Example:
```
[Event "Mate in 3"]
[FEN "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 1"]

1. Qh5 Nc6 2. Qxf7#
```

## Offline Support

The service worker caches the app on first visit. You can then:
- Play offline (PGN files loaded before going offline remain available)
- Reload the page without internet
- Continue solving puzzles

To update the cache after app changes, the service worker will check for updates on the next visit.

## Browser Support

- Chrome/Chromium: Full support including installation
- Firefox: Full support including installation
- Safari (iOS 15+): Works, use "Add to Home Screen" to install
- Edge: Full support including installation

## Tips

- **Vibration feedback**: Your phone will vibrate on correct/incorrect moves (can be disabled in settings)
- **Dark theme**: Reduces eye strain during extended training sessions
- **Progress saves locally**: Progress is stored in your browser's localStorage
- **Multiple puzzles**: Load PGN files with many puzzles and train them all

## Troubleshooting

**App won't install**: 
- Check that you're using HTTPS (required for PWA)
- Ensure manifest.json is accessible
- Try a different browser

**Service worker not working**:
- Check browser DevTools → Application → Service Workers
- Ensure URLs in sw.js match your actual file locations
- Clear cache and hard-refresh (Ctrl+Shift+R)

**PGN won't load**:
- Ensure PGN is valid (test with chess.js online)
- Check that FEN tags are present
- Move sequences must be in algebraic notation

## License

MIT

## Credits

Uses [chess.js](https://github.com/jhlywa/chess.js) for move validation and board logic.
