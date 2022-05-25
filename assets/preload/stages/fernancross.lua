
function onCreate()

	addCharacterToList('bfgameplay')
	addCharacterToList('newbf')
	addCharacterToList('fernancebolla')
	addCharacterToList('fernanehenserio')
	addCharacterToList('fernanfuria')
	addCharacterToList('fernansad')
	addCharacterToList('fernansaludo')
	addCharacterToList('gf')
	precacheImage('fernanmuro')
	precacheImage('fernansilla')
	precacheImage('fernanmueble')
	precacheImage('ranarene')
	precacheImage('stagefront')
	precacheImage('stageback')
	
	setObjectOrder("stageback",1)
	setObjectOrder("stagefront",2)
	setObjectOrder("boyfriendGroup",3)
	setObjectOrder("stagecurtains",4)
	setObjectOrder("fondo",5)
	setObjectOrder("fernanmuro",10)
	setObjectOrder("fernansilla",7)
	setObjectOrder("dadGroup",8)
	setObjectOrder("fernanmueble",9)
	
	makeLuaSprite('stageback', 'stageback', -900, -380)
	addLuaSprite('stageback', false)
	setLuaSpriteScrollFactor('stageback', 0.5, 0.8)
	scaleObject('stageback', 1.2, 1.2);
	
	makeLuaSprite('stagefront', 'stagefront', -1500, 600)
	scaleObject('stagefront', 1.5, 1.5);
	addLuaSprite('stagefront', false)
	
if not lowQuality then

	precacheImage('stagecurtains')
	
	makeLuaSprite('stagecurtains', 'stagecurtains', -1600, -400)
	scaleObject('stagecurtains', 1.5, 1.5);
	addLuaSprite('stagecurtains', false)


end
	makeLuaSprite('fondo', 'fondo', -700, -200)
	scaleObject('fondo', 1.2, 1.2);
	addLuaSprite('fondo', false)
	
	makeLuaSprite('fernanmuro', 'fernanmuro', -1100, -400)
	scaleObject('fernanmuro', 1.2, 1.2);
	addLuaSprite('fernanmuro', false)
	
    makeLuaSprite('fernansilla', 'fernansilla', -400, 200)
	scaleObject('fernansilla', 1, 1);
	addLuaSprite('fernansilla', false)
	
	makeAnimatedLuaSprite('curly', 'curly', -500, 580)
	addAnimationByPrefix('curly','curly','curly',26, true)
	setLuaSpriteScrollFactor('curly', 1, 1)
	scaleObject('curly', 1, 1);

    makeLuaSprite('fernanmueble', 'fernanmueble', -940, 700)
	scaleObject('fernanmueble', 1, 1);
	addLuaSprite('fernanmueble', true)
	
	makeAnimatedLuaSprite('ranarene', 'ranarene', -420, 550)
	addAnimationByPrefix('ranarene','ranarene','rana rene',26, true)
	setLuaSpriteScrollFactor('ranarene', 1, 1)
	addLuaSprite('ranarene', true)
	scaleObject('ranarene', 1, 1);
	
	setProperty('fondo.visible',false)
	
	if not lowQuality then
	
	precacheImage('fernanraya')

    makeLuaSprite('fernanraya', 'fernanraya', 500, -200)
	scaleObject('fernanraya', 1, 1);
	addLuaSprite('fernanraya', true)
	
	end
	
end

function onBeatHit() --for every beat

   end
function onStepHit() --for every step

end

function onUpdate()
for i=0,3 do
noteTweenAlpha(i+16, i, 0, 0.0000001)

        noteTweenX(i+16, i, 10000000, 0.0000001)
   end
end
function onEvent(name, value1, value2)
	-- event note triggered
	-- triggerEvent() does not call this function!!
	if value1 == 'cambio' then
		 	setProperty('stagecurtains.visible', false)
		  setProperty('stagefront.visible', false)
		  setProperty('stageback.visible', false)
		  setProperty('fondo.visible', true)
	
	end
		

end