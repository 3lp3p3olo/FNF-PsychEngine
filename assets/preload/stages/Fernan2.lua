
function onCreate()

	addCharacterToList('bfgameplay', 'boyfriend')
	addCharacterToList('fernancebolla', 'dad' )
	addCharacterToList('fernanehenserio', 'dad' )
	addCharacterToList('fernanfuria', 'dad' )
	addCharacterToList('fernansad', 'dad' )
	addCharacterToList('fernanno', 'dad' )
	addCharacterToList('fernansaludo', 'dad' )
	addCharacterToList('gf', 'gf' )
	precacheImage('fernanmuro')
	precacheImage('fernansilla')
	precacheImage('fernanmueble')
	precacheImage('ranarene')
	precacheImage('weebStreet')
	precacheImage('weebSchool')
	
	if not lowQuality then		
	
	precacheImage('weebSky')
	makeLuaSprite('weebSky', 'weebSky', -200, -200)
	scaleObject('weebSky', 6,6);
	addLuaSprite('weebSky', false)

	end
	
    makeLuaSprite('weebSchool', 'weebSchool', 100, 0)
	addLuaSprite('weebSchool', false)
	setLuaSpriteScrollFactor('weebSchool', 0.5, 0.8)
	scaleObject('weebSchool', 6,6);
	
	makeLuaSprite('weebStreet', 'weebStreet', 0, -300)
	scaleObject('weebStreet',  6,9);
	addLuaSprite('weebStreet', false)
	

	
	makeLuaSprite('limoSunset', 'limoSunset', -800, -200)
	scaleObject('limoSunset', 1.5, 1.5);
	addLuaSprite('limoSunset', false)
	
	makeAnimatedLuaSprite('limoDrive', 'limoDrive', -700, 750)
	addAnimationByPrefix('limoDrive','broom','Limo stage',24, true)
	setLuaSpriteScrollFactor('limoDrive', 1, 1)
	addLuaSprite('limoDrive', false)
	scaleObject('limoDrive', 1.2, 1.2);
	
	
	makeLuaSprite('fernanmuro', 'fernanmuro', -1100, -400)
	scaleObject('fernanmuro', 1.2, 1.2);
	addLuaSprite('fernanmuro', false)
	
    makeLuaSprite('fernansilla', 'fernansilla', -400, 200)
	scaleObject('fernansilla', 1, 1);
	addLuaSprite('fernansilla', false)

    makeLuaSprite('fernanmueble', 'fernanmueble', -940, 700)
	scaleObject('fernanmueble', 1, 1);
	addLuaSprite('fernanmueble', true)
	
	makeAnimatedLuaSprite('ranarene', 'ranarene', -420, 550)
	addAnimationByPrefix('ranarene','ranarene','rana rene',26, true)
	setLuaSpriteScrollFactor('ranarene', 1, 1)
	addLuaSprite('ranarene', true)
	scaleObject('ranarene', 1, 1);
	
	if not lowQuality then
	
	precacheImage('fernanraya')

    makeLuaSprite('fernanraya', 'fernanraya', 500, -200)
	scaleObject('fernanraya', 1, 1);
	addLuaSprite('fernanraya', true)
	
	end

			setProperty('weebSchool.visible', false)
			setProperty('weebSky.visible', false)
			setProperty('weebStreet.visible', false)
end

function onBeatHit() --for every beat
if curBeat == 309 then
	 removeLuaSprite('ranarene')
	 end
	if curBeat < 257 and curBeat > 191 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)
end
if curBeat < 417 and curBeat > 351 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)
end
 end
function onStepHit() --for every step

end

function onUpdate()
for i=0,3 do
noteTweenAlpha(i+16, i, 0, 0.0000001)

        noteTweenX(i+16, i, 10000000, 0.0000001)
   end
end
function onMoveCamera(focus)

    if focus == 'boyfriend' then
        setProperty ('defaultCamZoom', 0.6)
	
    elseif focus == 'dad' then
        setProperty ('defaultCamZoom', 1)
    
	end
end
function onEvent(name, value1, value2)
	-- event note triggered
	-- triggerEvent() does not call this function!!
	if value1 == 'cambio' then
		 	setProperty('weebSchool.visible', true)
			setProperty('weebSky.visible', true)
			setProperty('weebStreet.visible', true)
			setProperty('limoSunset.visible', false)
			setProperty('limoDrive.visible', false)
	end
end