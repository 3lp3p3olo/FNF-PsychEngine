
function onCreate()

	addCharacterToList('bfgameplay', 'boyfriend')
	addCharacterToList('bfplaya', 'boyfriend')
	addCharacterToList('fernancebolla', 'dad' )
	addCharacterToList('fernanehenserio', 'dad' )
	addCharacterToList('fernanfuria', 'dad' )
	addCharacterToList('fernansad', 'dad' )
	addCharacterToList('fernansaludo', 'dad' )
	addCharacterToList('gfplaya', 'gf' )
	addCharacterToList('gf', 'gf' )
	precacheImage('fernanmuro')
	precacheImage('fernansilla')
	precacheImage('curly')
	precacheImage('fernanmueble')
	precacheImage('ranarene')
	precacheImage('stagefront')
	precacheImage('stageback')
	precacheImage('playa')
	
if not lowQuality then
	makeLuaSprite('playa', 'playa', -1800, -400)
	scaleObject('playa', 1.5, 1.5); 
	
	end
	
	
    makeLuaSprite('stageback', 'stageback', -900, -380)
	addLuaSprite('stageback', false)
	setLuaSpriteScrollFactor('stageback', 0.5, 0.8)
	scaleObject('stageback', 1.2, 1.2);
	
	makeLuaSprite('stagefront', 'stagefront', -1500, 600)
	scaleObject('stagefront', 1.5, 1.5);
	addLuaSprite('stagefront', false)
	
	if not lowQuality then
	
	precacheImage('city')
	precacheImage('street')
	precacheImage('behindTrain')
	precacheImage('sky')
	precacheImage('stagecurtains')
		
	makeLuaSprite('stagecurtains', 'stagecurtains', -1600, -400)
	scaleObject('stagecurtains', 1.5, 1.5);
	addLuaSprite('stagecurtains', false)
	
	makeLuaSprite('sky', 'sky', -500, -200)
	scaleObject('sky', 1.8, 1.8);
	
	
	makeLuaSprite('city', 'city', 0, -200)
	scaleObject('city', 1.5, 1.5);

	
	makeLuaSprite('behindTrain', 'behindTrain', -400, -150)
	scaleObject('behindTrain', 1.4, 1.4);

   
	makeLuaSprite('street', 'street', -400, -150)
	scaleObject('street', 1.4, 1.4);
 
	
 end
 
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
	
	makeAnimatedLuaSprite('ranarene', 'ranarene', 120, 500)
	addAnimationByPrefix('ranarene','ranarene','rana rene',26, true)
	setLuaSpriteScrollFactor('ranarene', 1, 1)
	scaleObject('ranarene', 1, 1);
	
	if not lowQuality then
	
	precacheImage('fernanraya')
	precacheImage('vidas1')
	precacheImage('vidas2')
	precacheImage('vidas21')
	precacheImage('vidas3')
	
    makeLuaSprite('fernanraya', 'fernanraya', 500, -200)
	scaleObject('fernanraya', 1, 1);
	addLuaSprite('fernanraya', true)
	
	makeLuaSprite('vidas1', 'vidas1', -500, 0)
	scaleObject('vidas1', 0.5, 0.5);
	
	makeLuaSprite('vidas2', 'vidas2', -500, 0)
	scaleObject('vidas2', 0.5, 0.5);

	
	makeLuaSprite('vidas21', 'vidas21', -500, 0)
	scaleObject('vidas21', 0.5, 0.5);
	
	
	makeLuaSprite('vidas3', 'vidas3', -500, 0)
	scaleObject('vidas3', 0.5, 0.5);
	addLuaSprite('vidas3', true)
	
	end
	

	
end
function onBeatHit() --for every beat

   if curBeat == 107 then
   removeLuaSprite('vidas3')
   addLuaSprite('vidas2', true)
   end
    
   if curBeat == 155 then
   removeLuaSprite('vidas2',false)
   addLuaSprite('vidas1', true)
   end
    
   if curBeat == 268 then
   removeLuaSprite('vidas1',false)
   addLuaSprite('vidas21', true)
   end	
   
   if curBeat == 270 then
   removeLuaSprite('vidas21',true)
   addLuaSprite('vidas2',true)
   end
   
   if curBeat == 448 then
   removeLuaSprite('vidas2',true)
   addLuaSprite('vidas1',true)
   end

if not lowQuality then

   if curBeat == 228 then
	 removeLuaSprite('stageback')
	 removeLuaSprite('stagefront')
	 removeLuaSprite('stagecurtains')
	  addLuaSprite('playa', false)
	  setObjectOrder('playa',1)
	  setObjectOrder('fernanmuro', 2)
	 end
end
	
   if curBeat == 228 and misses == 0 then
    setObjectOrder("curly",8)
	addLuaSprite('curly', true)
	end
	
if not lowQuality then   

   if curBeat == 297 then
   removeLuaSprite('playa')
   addLuaSprite('sky',false)
   addLuaSprite('city',false)
   addLuaSprite('behindTrain',false)
   addLuaSprite('street',false)
     setObjectOrder("sky",1)
	setObjectOrder("city", 2)
	setObjectOrder("behindTrain", 3)
	setObjectOrder("street", 3)
   end
   end
   
   if curBeat == 297 and misses == 0 then 
   addLuaSprite('ranarene',true)
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


