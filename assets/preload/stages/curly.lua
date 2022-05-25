
function onCreate()

	addCharacterToList('bfgameplaycurly')
	addCharacterToList('curly')
	precacheImage('fernanmuro')
	precacheImage('fernansilla')
	precacheImage('fernanmueble')
	

    makeLuaSprite('halloween_bg_low', 'halloween_bg_low',  -500, -400)
	addLuaSprite('halloween_bg_low', false)
	setLuaSpriteScrollFactor('halloween_bg_low', 0.5, 0.8)
	scaleObject('halloween_bg_low', 1.5, 1.5);
	
	if not lowQuality then		
	
	makeAnimatedLuaSprite('halloween_bg', 'halloween_bg', -500, -400)
	addAnimationByPrefix('halloween_bg', 'stay', 'halloweem bg0', 26, true)
	addAnimationByPrefix('halloween_bg','boom','halloweem bg lightning strike',26, false)
	scaleObject('halloween_bg', 1.5, 1.5);
	addLuaSprite('halloween_bg', false)
	objectPlayAnimation('halloween_bg', 'stay');
end
	
	makeLuaSprite('fernanmuro', 'fernanmuro', -1100, -400)
	scaleObject('fernanmuro', 1.2, 1.2);
	addLuaSprite('fernanmuro', false)
	
    makeLuaSprite('fernansilla', 'fernansilla', -500, 100)
	scaleObject('fernansilla', 1.5, 1.5);
	addLuaSprite('fernansilla', false)

    makeLuaSprite('fernanmueble', 'fernanmueble', -940, 900)
	scaleObject('fernanmueble', 1, 1);
	addLuaSprite('fernanmueble', true)
	
	
	if not lowQuality then
	
	precacheImage('fernanraya')
	
    makeLuaSprite('fernanraya', 'fernanraya', 500, -200)
	scaleObject('fernanraya', 1, 1);
	addLuaSprite('fernanraya', true)
	
	end
	setProperty('gfGroup.visible', false)
end

function onBeatHit() --for every beat
if curBeat % 8 == 0 then
  objectPlayAnimation('halloween_bg', 'boom', false);
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