local allowCountdown = false
function onStartCountdown()
        if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
                setProperty('camGame.visible',false);
	            setProperty('camHUD.visible',false);
	            runTimer('fernan',1,1);

	allowCountdown = true;
	return Function_Stop;
end
setProperty('camGame.visible',true);
setProperty('camHUD.visible',true);
   
return Function_Continue;
end

function onTimerCompleted(tag, loops, loppsLeft)

    if tag == 'fernan' then
        startVideo('fernan');
    end
end


