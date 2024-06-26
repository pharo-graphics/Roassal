"
Diverging schemes put equal emphasis on mid-range critical values and extremes at both ends of the data range. The critical class or break in the middle of the legend is emphasized with light colors and low and high extremes are emphasized with dark colors that have contrasting hues.

Check it out by executing:
RSShapeBasicExamples new example34PaletteVisualization open

More info:
http://colorbrewer2.org/learnmore/schemes_full.html#diverging 

---Copyright:
All colors, palettes and schemes are from www.ColorBrewer.org by Cynthia A. Brewer, Geography, Pennsylvania State University.
Code by Cynthia is under the Apache License 2.0 (https://github.com/axismaps/colorbrewer/blob/master/LICENCE.txt)
Roassal is distributed under the MIT License, which is compatible with Apache License 2.0 
"
Class {
	#name : 'RSDivergingColorPalette',
	#superclass : 'RSColorPalette',
	#category : 'Roassal-Colors',
	#package : 'Roassal-Colors'
}

{ #category : 'accessing' }
RSDivergingColorPalette class >> paletteName [
	^ #diverging
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg10 [
	^ self fromTriplet: #(#(84 48 5) #(140 81 10) #(191 129 45) #(223 194 125) #(246 232 195) #(199 234 229) #(128 205 193) #(53 151 143) #(1 102 94) #(0 60 48))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg11 [
	^ self fromTriplet: #(#(84 48 5) #(140 81 10) #(191 129 45) #(223 194 125) #(246 232 195) #(245 245 245) #(199 234 229) #(128 205 193) #(53 151 143) #(1 102 94) #(0 60 48))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg3 [
	^ self fromTriplet: #(#(216 179 101) #(245 245 245) #(90 180 172))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg4 [
	^ self fromTriplet: #(#(166 97 26) #(223 194 125) #(128 205 193) #(1 133 113))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg5 [
	^ self fromTriplet: #(#(166 97 26) #(223 194 125) #(245 245 245) #(128 205 193) #(1 133 113))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg6 [
	^ self fromTriplet: #(#(140 81 10) #(216 179 101) #(246 232 195) #(199 234 229) #(90 180 172) #(1 102 94))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg7 [
	^ self fromTriplet: #(#(140 81 10) #(216 179 101) #(246 232 195) #(245 245 245) #(199 234 229) #(90 180 172) #(1 102 94))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg8 [
	^ self fromTriplet: #(#(140 81 10) #(191 129 45) #(223 194 125) #(246 232 195) #(199 234 229) #(128 205 193) #(53 151 143) #(1 102 94))
]

{ #category : 'palette' }
RSDivergingColorPalette >> brbg9 [
	^ self fromTriplet: #(#(140 81 10) #(191 129 45) #(223 194 125) #(246 232 195) #(245 245 245) #(199 234 229) #(128 205 193) #(53 151 143) #(1 102 94))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg10 [
	^ self fromTriplet: #(#(142 1 82) #(197 27 125) #(222 119 174) #(241 182 218) #(253 224 239) #(230 245 208) #(184 225 134) #(127 188 65) #(77 146 33) #(39 100 25))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg11 [
	^ self fromTriplet: #(#(142 1 82) #(197 27 125) #(222 119 174) #(241 182 218) #(253 224 239) #(247 247 247) #(230 245 208) #(184 225 134) #(127 188 65) #(77 146 33) #(39 100 25))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg3 [
	^ self fromTriplet: #(#(233 163 201) #(247 247 247) #(161 215 106))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg4 [
	^ self fromTriplet: #(#(208 28 139) #(241 182 218) #(184 225 134) #(77 172 38))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg5 [
	^ self fromTriplet: #(#(208 28 139) #(241 182 218) #(247 247 247) #(184 225 134) #(77 172 38))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg6 [
	^ self fromTriplet: #(#(197 27 125) #(233 163 201) #(253 224 239) #(230 245 208) #(161 215 106) #(77 146 33))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg7 [
	^ self fromTriplet: #(#(197 27 125) #(233 163 201) #(253 224 239) #(247 247 247) #(230 245 208) #(161 215 106) #(77 146 33))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg8 [
	^ self fromTriplet: #(#(197 27 125) #(222 119 174) #(241 182 218) #(253 224 239) #(230 245 208) #(184 225 134) #(127 188 65) #(77 146 33))
]

{ #category : 'palette' }
RSDivergingColorPalette >> piyg9 [
	^ self fromTriplet: #(#(197 27 125) #(222 119 174) #(241 182 218) #(253 224 239) #(247 247 247) #(230 245 208) #(184 225 134) #(127 188 65) #(77 146 33))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn10 [
	^ self fromTriplet: #(#(64 0 75) #(118 42 131) #(153 112 171) #(194 165 207) #(231 212 232) #(217 240 211) #(166 219 160) #(90 174 97) #(27 120 55) #(0 68 27))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn11 [
	^ self fromTriplet: #(#(64 0 75) #(118 42 131) #(153 112 171) #(194 165 207) #(231 212 232) #(247 247 247) #(217 240 211) #(166 219 160) #(90 174 97) #(27 120 55) #(0 68 27))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn3 [
	^ self fromTriplet: #(#(175 141 195) #(247 247 247) #(127 191 123))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn4 [
	^ self fromTriplet: #(#(123 50 148) #(194 165 207) #(166 219 160) #(0 136 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn5 [
	^ self fromTriplet: #(#(123 50 148) #(194 165 207) #(247 247 247) #(166 219 160) #(0 136 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn6 [
	^ self fromTriplet: #(#(118 42 131) #(175 141 195) #(231 212 232) #(217 240 211) #(127 191 123) #(27 120 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn7 [
	^ self fromTriplet: #(#(118 42 131) #(175 141 195) #(231 212 232) #(247 247 247) #(217 240 211) #(127 191 123) #(27 120 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn8 [
	^ self fromTriplet: #(#(118 42 131) #(153 112 171) #(194 165 207) #(231 212 232) #(217 240 211) #(166 219 160) #(90 174 97) #(27 120 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> prgn9 [
	^ self fromTriplet: #(#(118 42 131) #(153 112 171) #(194 165 207) #(231 212 232) #(247 247 247) #(217 240 211) #(166 219 160) #(90 174 97) #(27 120 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor10 [
	^ self fromTriplet: #(#(127 59 8) #(179 88 6) #(224 130 20) #(253 184 99) #(254 224 182) #(216 218 235) #(178 171 210) #(128 115 172) #(84 39 136) #(45 0 75))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor11 [
	^ self fromTriplet: #(#(127 59 8) #(179 88 6) #(224 130 20) #(253 184 99) #(254 224 182) #(247 247 247) #(216 218 235) #(178 171 210) #(128 115 172) #(84 39 136) #(45 0 75))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor3 [
	^ self fromTriplet: #(#(241 163 64) #(247 247 247) #(153 142 195))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor4 [
	^ self fromTriplet: #(#(230 97 1) #(253 184 99) #(178 171 210) #(94 60 153))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor5 [
	^ self fromTriplet: #(#(230 97 1) #(253 184 99) #(247 247 247) #(178 171 210) #(94 60 153))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor6 [
	^ self fromTriplet: #(#(179 88 6) #(241 163 64) #(254 224 182) #(216 218 235) #(153 142 195) #(84 39 136))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor7 [
	^ self fromTriplet: #(#(179 88 6) #(241 163 64) #(254 224 182) #(247 247 247) #(216 218 235) #(153 142 195) #(84 39 136))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor8 [
	^ self fromTriplet: #(#(179 88 6) #(224 130 20) #(253 184 99) #(254 224 182) #(216 218 235) #(178 171 210) #(128 115 172) #(84 39 136))
]

{ #category : 'palette' }
RSDivergingColorPalette >> puor9 [
	^ self fromTriplet: #(#(179 88 6) #(224 130 20) #(253 184 99) #(254 224 182) #(247 247 247) #(216 218 235) #(178 171 210) #(128 115 172) #(84 39 136))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu10 [
	^ self fromTriplet: #(#(103 0 31) #(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(209 229 240) #(146 197 222) #(67 147 195) #(33 102 172) #(5 48 97))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu11 [
	^ self fromTriplet: #(#(103 0 31) #(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(247 247 247) #(209 229 240) #(146 197 222) #(67 147 195) #(33 102 172) #(5 48 97))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu3 [
	^ self fromTriplet: #(#(239 138 98) #(247 247 247) #(103 169 207))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu4 [
	^ self fromTriplet: #(#(202 0 32) #(244 165 130) #(146 197 222) #(5 113 176))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu5 [
	^ self fromTriplet: #(#(202 0 32) #(244 165 130) #(247 247 247) #(146 197 222) #(5 113 176))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu6 [
	^ self fromTriplet: #(#(178 24 43) #(239 138 98) #(253 219 199) #(209 229 240) #(103 169 207) #(33 102 172))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu7 [
	^ self fromTriplet: #(#(178 24 43) #(239 138 98) #(253 219 199) #(247 247 247) #(209 229 240) #(103 169 207) #(33 102 172))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu8 [
	^ self fromTriplet: #(#(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(209 229 240) #(146 197 222) #(67 147 195) #(33 102 172))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdbu9 [
	^ self fromTriplet: #(#(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(247 247 247) #(209 229 240) #(146 197 222) #(67 147 195) #(33 102 172))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy10 [
	^ self fromTriplet: #(#(103 0 31) #(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(224 224 224) #(186 186 186) #(135 135 135) #(77 77 77) #(26 26 26))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy11 [
	^ self fromTriplet: #(#(103 0 31) #(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(255 255 255) #(224 224 224) #(186 186 186) #(135 135 135) #(77 77 77) #(26 26 26))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy3 [
	^ self fromTriplet: #(#(239 138 98) #(255 255 255) #(153 153 153))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy4 [
	^ self fromTriplet: #(#(202 0 32) #(244 165 130) #(186 186 186) #(64 64 64))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy5 [
	^ self fromTriplet: #(#(202 0 32) #(244 165 130) #(255 255 255) #(186 186 186) #(64 64 64))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy6 [
	^ self fromTriplet: #(#(178 24 43) #(239 138 98) #(253 219 199) #(224 224 224) #(153 153 153) #(77 77 77))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy7 [
	^ self fromTriplet: #(#(178 24 43) #(239 138 98) #(253 219 199) #(255 255 255) #(224 224 224) #(153 153 153) #(77 77 77))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy8 [
	^ self fromTriplet: #(#(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(224 224 224) #(186 186 186) #(135 135 135) #(77 77 77))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdgy9 [
	^ self fromTriplet: #(#(178 24 43) #(214 96 77) #(244 165 130) #(253 219 199) #(255 255 255) #(224 224 224) #(186 186 186) #(135 135 135) #(77 77 77))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu10 [
	^ self fromTriplet: #(#(165 0 38) #(215 48 39) #(244 109 67) #(253 174 97) #(254 224 144) #(224 243 248) #(171 217 233) #(116 173 209) #(69 117 180) #(49 54 149))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu11 [
	^ self fromTriplet: #(#(165 0 38) #(215 48 39) #(244 109 67) #(253 174 97) #(254 224 144) #(255 255 191) #(224 243 248) #(171 217 233) #(116 173 209) #(69 117 180) #(49 54 149))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu3 [
	^ self fromTriplet: #(#(252 141 89) #(255 255 191) #(145 191 219))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu4 [
	^ self fromTriplet: #(#(215 25 28) #(253 174 97) #(171 217 233) #(44 123 182))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu5 [
	^ self fromTriplet: #(#(215 25 28) #(253 174 97) #(255 255 191) #(171 217 233) #(44 123 182))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu6 [
	^ self fromTriplet: #(#(215 48 39) #(252 141 89) #(254 224 144) #(224 243 248) #(145 191 219) #(69 117 180))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu7 [
	^ self fromTriplet: #(#(215 48 39) #(252 141 89) #(254 224 144) #(255 255 191) #(224 243 248) #(145 191 219) #(69 117 180))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu8 [
	^ self fromTriplet: #(#(215 48 39) #(244 109 67) #(253 174 97) #(254 224 144) #(224 243 248) #(171 217 233) #(116 173 209) #(69 117 180))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylbu9 [
	^ self fromTriplet: #(#(215 48 39) #(244 109 67) #(253 174 97) #(254 224 144) #(255 255 191) #(224 243 248) #(171 217 233) #(116 173 209) #(69 117 180))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn10 [
	^ self fromTriplet: #(#(165 0 38) #(215 48 39) #(244 109 67) #(253 174 97) #(254 224 139) #(217 239 139) #(166 217 106) #(102 189 99) #(26 152 80) #(0 104 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn11 [
	^ self fromTriplet: #(#(165 0 38) #(215 48 39) #(244 109 67) #(253 174 97) #(254 224 139) #(255 255 191) #(217 239 139) #(166 217 106) #(102 189 99) #(26 152 80) #(0 104 55))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn3 [
	^ self fromTriplet: #(#(252 141 89) #(255 255 191) #(145 207 96))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn4 [
	^ self fromTriplet: #(#(215 25 28) #(253 174 97) #(166 217 106) #(26 150 65))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn5 [
	^ self fromTriplet: #(#(215 25 28) #(253 174 97) #(255 255 191) #(166 217 106) #(26 150 65))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn6 [
	^ self fromTriplet: #(#(215 48 39) #(252 141 89) #(254 224 139) #(217 239 139) #(145 207 96) #(26 152 80))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn7 [
	^ self fromTriplet: #(#(215 48 39) #(252 141 89) #(254 224 139) #(255 255 191) #(217 239 139) #(145 207 96) #(26 152 80))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn8 [
	^ self fromTriplet: #(#(215 48 39) #(244 109 67) #(253 174 97) #(254 224 139) #(217 239 139) #(166 217 106) #(102 189 99) #(26 152 80))
]

{ #category : 'palette' }
RSDivergingColorPalette >> rdylgn9 [
	^ self fromTriplet: #(#(215 48 39) #(244 109 67) #(253 174 97) #(254 224 139) #(255 255 191) #(217 239 139) #(166 217 106) #(102 189 99) #(26 152 80))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral10 [
	^ self fromTriplet: #(#(158 1 66) #(213 62 79) #(244 109 67) #(253 174 97) #(254 224 139) #(230 245 152) #(171 221 164) #(102 194 165) #(50 136 189) #(94 79 162))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral11 [
	^ self fromTriplet: #(#(158 1 66) #(213 62 79) #(244 109 67) #(253 174 97) #(254 224 139) #(255 255 191) #(230 245 152) #(171 221 164) #(102 194 165) #(50 136 189) #(94 79 162))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral3 [
	^ self fromTriplet: #(#(252 141 89) #(255 255 191) #(153 213 148))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral4 [
	^ self fromTriplet: #(#(215 25 28) #(253 174 97) #(171 221 164) #(43 131 186))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral5 [
	^ self fromTriplet: #(#(215 25 28) #(253 174 97) #(255 255 191) #(171 221 164) #(43 131 186))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral6 [
	^ self fromTriplet: #(#(213 62 79) #(252 141 89) #(254 224 139) #(230 245 152) #(153 213 148) #(50 136 189))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral7 [
	^ self fromTriplet: #(#(213 62 79) #(252 141 89) #(254 224 139) #(255 255 191) #(230 245 152) #(153 213 148) #(50 136 189))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral8 [
	^ self fromTriplet: #(#(213 62 79) #(244 109 67) #(253 174 97) #(254 224 139) #(230 245 152) #(171 221 164) #(102 194 165) #(50 136 189))
]

{ #category : 'palette' }
RSDivergingColorPalette >> spectral9 [
	^ self fromTriplet: #(#(213 62 79) #(244 109 67) #(253 174 97) #(254 224 139) #(255 255 191) #(230 245 152) #(171 221 164) #(102 194 165) #(50 136 189))
]
