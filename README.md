# Poker Tools

A set of browser-based poker trainers, plus a blackjack basic-strategy chart.

**Live:** https://johnjrodriguez01.github.io/poker-tools/

Every tool is a single self-contained HTML file. No accounts, no server, no tracking, no build step. Open the link, and once a page has loaded it keeps working offline. On a phone, open the site in Safari and use **Share → Add to Home Screen** for a full-screen, app-like shortcut.

---

## Preflop

### [Cash Game Preflop Range Charts](Cash_Game_Preflop_Range_Charts.html)
Opening and defending ranges by seat and situation, built from solver output.

- **Study** — browse the grid, click any cell for its exact action mix, or copy the range as text. Filter by situation, seat, and rep mix.
- **Drill** — get quizzed on spots drawn from whatever you've filtered into scope.
- **Stats** — a heat map of where you miss, with breakdowns by situation, by seat, worst spots, and worst individual hands. A coverage tab lists solver nodes that were never captured, so you can tell missing data apart from a gap in your game.

Progress is exportable and importable as a file, so stats survive a browser reset or move between devices.

### [Range Drills](my-range-drills.html)
Hand reading through a six-bucket framework, for 6-max — heads-up and multiway, all amounts in big blinds.

Filter by street, number of players, and bucket focus. Two stages: name the bucket, or name the bucket *and* the action. Tracks accuracy, streak, and time per decision.

The stats tab shows which buckets you confuse with which — the useful part, since thin-vs-thick errors cost you on rivers and SDV-vs-draw errors turn made hands into bluffs. A reference tab holds the bucket definitions and the full decision grid.

### [Range Analyzer](range-analyzer.html)
A 169-hand grid for building and inspecting ranges. Select by hand or pull a top-% slider (5% through 100%), and it reports combo count, hand count, and percentage of all 1,326 combos. Breaks the selection into pairs, suited, and offsuit, marks boundary hands that are only partly in, and exports the range as copyable text.

---

## Postflop

### [Board Callout](board-callout.html)
Read board texture at a glance. Given a board, call out what's already possible — straight, flush, full house, straight flush — then deal the turn or river and say whether the nuts changed. Restrict to wet boards only if you want the harder set. Tracks streak and best streak.

### [Name the Draw](name-the-draw.html)
Identify draws on sight and count them correctly. Pick from gutshot, open-ended, double gutshot, flush draw, backdoor straight, backdoor flush, one or two overcards, or no draw — then enter your total outs. It scores the read and the count separately, so "right draw, wrong count" is its own result. Deal the turn to see whether you got there.

Two modes: straights and flushes only, or any improvement. Keyboard-driven — number keys pick, Enter submits, Space deals the next hand.

### [Combo Trainer](combo-trainer.html)
Counting hand combinations, in four question types: raw combo counts, how a board changes them, how many combos beat a given hand, and what's currently beating you. Includes a reference tab.

### [Bet Sizing Trainer](bet-sizing-trainer.html)
Choosing a size, on a felt table with the spot dealt out — position, pot type, board, and your hand.

- **Flop size** — check, small (25–33%), or large (60–75%), graded on board texture and where your hand falls in the range.
- **Turn barrel** — two steps: classify the turn card (overcard, brick, board pair, draw filler, through card), then barrel or check.
- **Geometry** — given a pot, an effective stack, and the streets left, pick the fraction of pot that gets stacks in by the river. Feedback shows the exact geometric size and the street-by-street path to it.
- **Mixed** — all of the above, with a random opponent each hand.

Grade against a **GTO baseline**, a **Reg**, or a **Station** — the same spot gets a different answer against each, and the feedback shows all three side by side so you can see which reads actually change the size. Accuracy is tracked per board texture and per turn card, so the weak textures surface on their own. Keyboard-driven: number keys answer, Enter deals the next hand, `M` cycles modes.

---

## Math

### [Pot Odds Trainer](pot-odds-trainer.html)
Pricing calls, in four modes: price to call, outs to equity, counting outs, and a call-or-fold decision.

The reference tab is the point of the tool: a table of required equity by bet size from a quarter pot up through overbets, and the argument for memorizing five numbers rather than doing arithmetic at the table — **quarter 17, third 20, half 25, three-quarters 30, pot 33**, interpolating for everything in between. Pot size itself never matters; a half-pot bet prices you at 25% whether the pot is 4bb or 40bb.

### [SPR Trainer](spr-trainer.html)
Stack-to-pot ratio for 6-max cash.

- **Calculator** — enter stacks and flop pot, or load a preset (limped, 2.5x and 3x single-raised, SRP 3-way, 3-bet, squeeze, 4-bet). Returns SPR, the zone it falls in, effective stack, and where you sit on a commit / standard / pot-control scale.
- **Drill** — timed spot quizzes with accuracy, streak, and best-streak tracking.
- **Reference** — stack-off thresholds by SPR zone, typical SPR by preflop line from 100bb, and the flop sizing that gets stacks in.

The point it keeps hammering: halve the effective stack and you halve the SPR. A 50bb villain in a 3-bet pot puts you at SPR 2, not 4.4, and top pair becomes a stack-off.

---

## Other

### [Blackjack Basic Strategy](blackjack-trainer.html)
Chart and drills for 6 decks, dealer stands on soft 17, double on any two cards, late surrender. Toggles for double-after-split and whether surrender is offered.

Tap any cell to read the play in plain English. The drill tracks weak spots so you can see which cells you keep getting wrong. Marks hard totals where surrender beats the boxed play — and note that 8,8 is always a split rather than a surrender. Never take insurance or even money.

---

## Updating

Files are served straight from `main` by GitHub Pages — no build, no deploy limit. To publish a change: overwrite the `.html` file, keeping the same filename, then commit and push. Double-clicking `update.bat` does all three.

Keeping the filename stable is what preserves bookmarks and home-screen shortcuts. When a tool does get renamed, the old path is left behind as a redirect so existing links keep working.
