local composer = require( "composer" )
 
local scene = composer.newScene()
 
local MARGIN = 20
 
-- create()
function scene:create( event )
    local sceneGroup = self.view

    -- Carrega a imagem de fundo
    local bg = display.newImageRect(sceneGroup, "assets/pages/page_5.png", 768, 1024)

    -- Posiciona a imagem no centro da tela
    bg.x = display.contentCenterX
    bg.y = display.contentCenterY

    --botão back
    local btprev = display.newImage(sceneGroup, "/assets/bottons/back.png")
    btprev.x = display.contentWidth - btprev.width/2 - MARGIN - 530
    btprev.y = display.contentHeight - btprev.height/2 - MARGIN - 50
    --botão next
    local btnext = display.newImage(sceneGroup, "/assets/bottons/next.png")
    btnext.x = display.contentWidth - btnext.width/2 - MARGIN - 40
    btnext.y = display.contentHeight - btnext.height/2 - MARGIN - 50

    btprev:addEventListener("tap", function (event)
        composer.gotoScene("pag_4", {
            effect = "fade",
            time = 500
        });
        
    end)

    btnext:addEventListener("tap", function (event)
        composer.gotoScene("pag_6", {
            effect = "fade",
            time = 500
        });
        
    end)
    
    
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene