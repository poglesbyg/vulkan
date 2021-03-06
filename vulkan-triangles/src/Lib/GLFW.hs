{-# LANGUAGE Strict #-}
module Lib.GLFW
    ( createGLFWVulkanInstance
    , initGLFWWindow
    , glfwMainLoop
    ) where

import           Control.Monad       (unless)
import           Graphics.UI.GLFW    (ClientAPI (..), WindowHint (..))
import qualified Graphics.UI.GLFW    as GLFW
import           Graphics.Vulkan

import           Lib.Program
import           Lib.Vulkan.Instance


initGLFWWindow :: Int -- ^ Window width
               -> Int -- ^ Window height
               -> String -- ^ Window name
               -> Program r GLFW.Window
initGLFWWindow w h n = do

    -- even if something bad happens, we need to terminate GLFW
    allocResource
      (\() -> liftIO GLFW.terminate >> logInfo "Terminated GLFW.")
      ( liftIO GLFW.init >>= flip unless
          (throwVkMsg "Failed to initialize GLFW.")
      )

    liftIO GLFW.getVersionString >>= mapM_ (logInfo . ("GLFW version: " ++))

    liftIO GLFW.vulkanSupported >>= flip unless
      (throwVkMsg "GLFW reports that vulkan is not supported!")

    liftIO . GLFW.windowHint $ WindowHint'ClientAPI ClientAPI'NoAPI
    liftIO . GLFW.windowHint $ WindowHint'Resizable True

    allocResource
      ( \window -> do
          liftIO (GLFW.destroyWindow window)
          logDebug "Closed GLFW window."
      ) $ do
      mw <- liftIO $ GLFW.createWindow w h n Nothing Nothing
      case mw of
        Nothing -> throwVkMsg "Failed to initialize GLFW window."
        Just window  -> do
          logDebug "Initialized GLFW window."
          return window


glfwMainLoop :: GLFW.Window -> Program' () -> Program r ()
glfwMainLoop w action = go
  where
    go = do
      should <- liftIO $ GLFW.windowShouldClose w
      unless should $ do
        liftIO GLFW.pollEvents >> locally action
        go


createGLFWVulkanInstance :: String -> Program r VkInstance
createGLFWVulkanInstance progName = do
    -- get required extension names from GLFW
    glfwReqExts <- liftIO GLFW.getRequiredInstanceExtensions
    createVulkanInstance
      progName
      "My perfect Haskell engine"
      glfwReqExts
      []
