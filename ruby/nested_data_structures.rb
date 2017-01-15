require 'date'

album = {
	title: 'W:/2016ALBUM',
	artists: ['deadmau5'],
	label: 'mau5trap',
	release_date: Date.new(2016,12,2),
	track_list: [
		Hash[  
			title: '4ware',
			featured_artists: [],
			play_time: 519
		],
		Hash[
			title: '2448',
			featured_artists: [],
			play_time: 385
		],
		Hash[
			title: 'Cat Thruster',
			featured_artists: [],
			play_time: 331
		],
		Hash[
			title: 'Deus Ex Machina',
			featured_artists: [],
			play_time: 391
		],
		Hash[
			title: 'Glish',
			featured_artists: [],
			play_time: 130
		],
		Hash[
			title: 'Imaginary Friends',
			featured_artists: [],
			play_time: 467
		],
		Hash[
			title: 'Let Go',
			featured_artists: ['Grabbitz'],
			play_time: 378
		],
		Hash[
			title: 'No Problem',
			featured_artists: [],
			play_time: 419
		],
		Hash[
			title: 'Snowcone',
			featured_artists: [],
			play_time: 314
		],
		Hash[
			title: 'Three Pound Chicken Wing',
			featured_artists: [],
			play_time: 383
		],
		Hash[
			title: 'Whelk Then',
			featured_artists: [],
			play_time: 339
		],
		Hash[
			title: 'Let Go (Extended Edit)',
			featured_artists: ['Grabbitz'],
			play_time: 691
		]
	]
}

album_play_time = 0
featured_artists = []
p 'TITLE: ' << album[:title]
p 'ARTISTS: ' << album[:artists].join(', ')
p 'LABEL: ' << album[:label]
p 'RELEASE DATE: ' << album[:release_date].to_s
p 'TRACK LIST: '
p '--------------------------------------------' 
album[:track_list].length.times do |time|
	album_play_time += album[:track_list][time][:play_time]
	album[:track_list][time][:featured_artists].map { |x| featured_artists << x }
	if time < 9
		p (time+1).to_s << '    ' << album[:track_list][time][:title]
	elsif time < 99
		p (time+1).to_s << '   ' << album[:track_list][time][:title]
	else
		p (time+1).to_s << '  ' << album[:track_list][time][:title]
	end
end
p ''
p 'PLAYING TIME: ' << (album_play_time/60).to_s << 'm ' << (album_play_time%60).to_s << 's'
p 'FEATURED ARTISTS: ' << featured_artists.uniq.join(', ')
